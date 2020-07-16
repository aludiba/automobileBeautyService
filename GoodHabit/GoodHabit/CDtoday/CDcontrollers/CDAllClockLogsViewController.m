//
//  CDAllClockLogsViewController.m
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/23.
//  Copyright © 2019 hb. All rights reserved.
//

#import "CDAllClockLogsViewController.h"
#import "CDAllClockLogsViewCellTableViewCell.h"
#import "CDGuideModel.h"

@interface CDAllClockLogsViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSMutableArray *CDdataArray;
@property(nonatomic, strong)UITableView *CDmainTable;
@end

@implementation CDAllClockLogsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"打卡日志", nil);
    [self.CDmainTable reloadData];
}
- (void)setModel:(CDGuideModel *)model{
    _model = model;
    NSArray<CDGuideClockInformationModel *> *CDpunchArray = _model.CDpunchArray;
    for (int i = (int)(CDpunchArray.count - 1); i > -1; i--) {
        CDGuideClockInformationModel *clockInformationModel = CDpunchArray[i];
        [self.CDdataArray addObject:clockInformationModel];
    }
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.CDdataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CDGuideClockInformationModel *model = self.CDdataArray[indexPath.row];
    CDAllClockLogsViewCellTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CDAllClockLogsViewCellTableViewCell" forIndexPath:indexPath];
    cell.model = model;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
#pragma mark - 属性懒加载
- (NSMutableArray *)CDdataArray{
    if (!_CDdataArray) {
        _CDdataArray = [[NSMutableArray alloc] init];
    }
    return _CDdataArray;
}
- (UITableView *)CDmainTable{
    if (!_CDmainTable) {
        _CDmainTable = [[UITableView alloc] init];
        _CDmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _CDmainTable.delegate = self;
        _CDmainTable.dataSource = self;
        _CDmainTable.estimatedRowHeight = 55.0f;
        _CDmainTable.rowHeight = UITableViewAutomaticDimension;
        [_CDmainTable registerClass:[CDAllClockLogsViewCellTableViewCell class] forCellReuseIdentifier:@"CDAllClockLogsViewCellTableViewCell"];
        [self.view addSubview:_CDmainTable];
        [_CDmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_topLayoutGuideBottom).offset(15);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view);
        }];
    }
    return _CDmainTable;
}
@end
