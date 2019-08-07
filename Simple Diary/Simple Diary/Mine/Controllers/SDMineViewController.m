//
//  SDMineViewController.m
//  Simple Diary
//
//  Created by bykj on 2019/7/20.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "SDMineViewController.h"
#import "SDMineModel.h"
#import "SDMineTableViewCell.h"
@interface SDMineViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)UITableView *mainTable;
@property(nonatomic, strong)NSMutableArray *viewDataArray;
@end

@implementation SDMineViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = NSLocalizedString(@"我的", nil);
    [self setContent];
}
- (void)setContent{
    SDMineModel *line1Model0 = [[SDMineModel alloc] init];
    line1Model0.type = SDMineCellTypeLine;
    [self.viewDataArray addObject:line1Model0];
    SDMineModel *nicknameModel = [[SDMineModel alloc] init];
    nicknameModel.title = @"昵称";
    nicknameModel.type = SDMineCellTypeContent;
    [self.viewDataArray addObject:nicknameModel];
    SDMineModel *passwordModel = [[SDMineModel alloc] init];
    passwordModel.title = @"密码修改";
    passwordModel.type = SDMineCellTypeDefault;
    [self.viewDataArray addObject:passwordModel];
    SDMineModel *lineModel = [[SDMineModel alloc] init];
    lineModel.type = SDMineCellTypeLine;
    [self.viewDataArray addObject:lineModel];
    SDMineModel *remindModel = [[SDMineModel alloc] init];
    remindModel.title = @"提醒写日记";
    remindModel.type = SDMineCellTypeContent;
    [self.viewDataArray addObject:remindModel];
    SDMineModel *styleModel = [[SDMineModel alloc] init];
    styleModel.title = @"日记样式";
    styleModel.type = SDMineCellTypeDefault;
    [self.viewDataArray addObject:styleModel];
    SDMineModel *line1Model = [[SDMineModel alloc] init];
    line1Model.type = SDMineCellTypeLine;
    [self.viewDataArray addObject:line1Model];
    SDMineModel *loginOutModel = [[SDMineModel alloc] init];
    loginOutModel.title = @"退出登录";
    loginOutModel.type = SDMineCellTypeLoginOut;
    [self.viewDataArray addObject:loginOutModel];
    [self.mainTable reloadData];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.viewDataArray.count;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    SDMineModel *model = self.viewDataArray[indexPath.row];
    if (model.type == SDMineCellTypeLine) {
        return 15;
    }else{
        return UITableViewAutomaticDimension;
    }
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    SDMineModel *model = self.viewDataArray[indexPath.row];
    if (model.type == SDMineCellTypeLine) {
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell" forIndexPath:indexPath];
        cell.backgroundColor = SDH_Color(242, 242, 242, 1);
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }else{
        SDMineTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"SDMineTableViewCell" forIndexPath:indexPath];
        cell.model = model;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }
}
#pragma mark - 属性懒加载
- (NSMutableArray *)viewDataArray{
    if (!_viewDataArray) {
        _viewDataArray = [[NSMutableArray alloc] init];
    }
    return _viewDataArray;
}
- (UITableView *)mainTable{
    if (!_mainTable) {
        _mainTable = [[UITableView alloc] init];
        _mainTable.backgroundColor = SDH_Color(242, 242, 242, 1);
        _mainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _mainTable.rowHeight = UITableViewAutomaticDimension;
        _mainTable.estimatedRowHeight = 55.0f;
        _mainTable.delegate = self;
        _mainTable.dataSource = self;
        [_mainTable registerClass:[SDMineTableViewCell class] forCellReuseIdentifier:@"SDMineTableViewCell"];
        [_mainTable registerClass:[UITableViewCell class] forCellReuseIdentifier:@"UITableViewCell"];
        [self.view addSubview:_mainTable];
        [_mainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.view);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.mas_bottomLayoutGuideTop);
        }];
    }
    return _mainTable;
}
@end
