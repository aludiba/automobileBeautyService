//
//  GHAllClockLogsViewController.m
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/23.
//  Copyright © 2019 hb. All rights reserved.
//

#import "GHAllClockLogsViewController.h"
#import "GHAllClockLogsViewCellTableViewCell.h"
#import "GHGuideModel.h"

@interface GHAllClockLogsViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSMutableArray *dataArray;
@property(nonatomic, strong)UITableView *mainTable;
@end

@implementation GHAllClockLogsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"打卡日志", nil);
    [self.mainTable reloadData];
}
- (void)setModel:(GHGuideModel *)model{
    _model = model;
    NSArray<GHGuideClockInformationModel *> *punchArray = _model.punchArray;
    for (int i = (int)(punchArray.count - 1); i > -1; i--) {
        GHGuideClockInformationModel *clockInformationModel = punchArray[i];
        [self.dataArray addObject:clockInformationModel];
    }
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    GHGuideClockInformationModel *model = self.dataArray[indexPath.row];
    GHAllClockLogsViewCellTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"GHAllClockLogsViewCellTableViewCell" forIndexPath:indexPath];
    cell.model = model;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
#pragma mark - 属性懒加载
- (NSMutableArray *)dataArray{
    if (!_dataArray) {
        _dataArray = [[NSMutableArray alloc] init];
    }
    return _dataArray;
}
- (UITableView *)mainTable{
    if (!_mainTable) {
        _mainTable = [[UITableView alloc] init];
        _mainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _mainTable.delegate = self;
        _mainTable.dataSource = self;
        _mainTable.estimatedRowHeight = 55.0f;
        _mainTable.rowHeight = UITableViewAutomaticDimension;
        [_mainTable registerClass:[GHAllClockLogsViewCellTableViewCell class] forCellReuseIdentifier:@"GHAllClockLogsViewCellTableViewCell"];
        [self.view addSubview:_mainTable];
        [_mainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_topLayoutGuideBottom).offset(15);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view);
        }];
    }
    return _mainTable;
}
@end
