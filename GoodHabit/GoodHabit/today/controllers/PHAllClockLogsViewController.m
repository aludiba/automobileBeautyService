//
//  PHAllClockLogsViewController.m
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/23.
//  Copyright © 2019 hb. All rights reserved.
//

#import "PHAllClockLogsViewController.h"
#import "PHAllClockLogsViewCellTableViewCell.h"
#import "PHGuideModel.h"

@interface PHAllClockLogsViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSMutableArray *PHdataArray;
@property(nonatomic, strong)UITableView *PHmainTable;
@end

@implementation PHAllClockLogsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"打卡日志", nil);
    [self.PHmainTable reloadData];
}
- (void)setModel:(PHGuideModel *)model{
    _model = model;
    NSArray<PHGuideClockInformationModel *> *PHpunchArray = _model.PHpunchArray;
    for (int i = (int)(PHpunchArray.count - 1); i > -1; i--) {
        PHGuideClockInformationModel *clockInformationModel = PHpunchArray[i];
        [self.PHdataArray addObject:clockInformationModel];
    }
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.PHdataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    PHGuideClockInformationModel *model = self.PHdataArray[indexPath.row];
    PHAllClockLogsViewCellTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PHAllClockLogsViewCellTableViewCell" forIndexPath:indexPath];
    cell.model = model;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
#pragma mark - 属性懒加载
- (NSMutableArray *)PHdataArray{
    if (!_PHdataArray) {
        _PHdataArray = [[NSMutableArray alloc] init];
    }
    return _PHdataArray;
}
- (UITableView *)PHmainTable{
    if (!_PHmainTable) {
        _PHmainTable = [[UITableView alloc] init];
        _PHmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _PHmainTable.delegate = self;
        _PHmainTable.dataSource = self;
        _PHmainTable.estimatedRowHeight = 55.0f;
        _PHmainTable.rowHeight = UITableViewAutomaticDimension;
        [_PHmainTable registerClass:[PHAllClockLogsViewCellTableViewCell class] forCellReuseIdentifier:@"PHAllClockLogsViewCellTableViewCell"];
        [self.view addSubview:_PHmainTable];
        [_PHmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_topLayoutGuideBottom).offset(15);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view);
        }];
    }
    return _PHmainTable;
}
@end
