//
//  JBHomeViewController.m
//  GoodLifeAndGoodHabits
//
//  Created by user on 2020/6/9.
//  Copyright © 2020 user. All rights reserved.
//

#import "JBHomeViewController.h"
#import "JBLifeModel.h"
#import "JBHomeAddNoteViewController.h"
#import "JBHomeHeaderView.h"
#import "JBHomeTableViewCell.h"

@interface JBHomeViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)UIImageView *JBHeadImgView;//头图片
@property(nonatomic, strong)NSMutableArray *JBDataArray;//页面数据
@property(nonatomic, strong)UIButton *JBaddButton;
@end

@implementation JBHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = NSLocalizedString(@"首页", nil);
    [self JBsetContentView];
}
- (void)JBsetContentView{
    [self.view addSubview:self.JBHeadImgView];
    [self.JBHeadImgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
        make.height.mas_equalTo(200);
    }];
    [self.JBmainTable.mj_header beginRefreshing];
    [self.view addSubview:self.JBaddButton];
    [self.JBaddButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.view).offset(-JBHeightTabBar - 10);
        make.trailing.equalTo(self.view).offset(-20);
        make.width.mas_equalTo(64);
        make.height.mas_equalTo(64);
    }];
}
#pragma mark - actions
- (void)JBLoadData{
    AVUser *JBauthor = [AVUser currentUser];
    AVQuery *JBbquery = [AVQuery queryWithClassName:@"JBGoodLife"];
    [JBbquery whereKey:@"author" equalTo:JBauthor];
    __weak typeof(self) weakSelf = self;
    [self.JBDataArray removeAllObjects];
    [JBbquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
               if (error) {
                   [weakSelf.JBmainTable.mj_header endRefreshing];
                   [MBProgressHUD JBshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
               }else{
                   if (array.count) {
                   NSMutableArray *JBTempDataArray = [[NSMutableArray alloc] init];
                   NSMutableArray *JBTempDateArray = [[NSMutableArray alloc] init];
                   for (int i = (int)(array.count - 1); i > -1; i--) {
                       AVObject *JBobj = array[i];
                       JBLifeModel *JBmodel = [[JBLifeModel alloc] init];
                       JBmodel.JBobjectId = [JBobj objectId];
                       JBmodel.JBNoteDateString = [JBobj objectForKey:@"JBNoteDateString"];
                       JBmodel.JBTitle = [JBobj objectForKey:@"JBTitle"];
                       JBmodel.JBContent = [JBobj objectForKey:@"JBContent"];
                       [JBTempDateArray addObject:[JBobj objectForKey:@"JBNoteDateString"]];
                       [JBTempDataArray addObject:JBmodel];
                   }
                       for (int i = 0; i < JBTempDateArray.count; i++) {
                           NSString *JBDateString = JBTempDateArray[i];
                           NSMutableDictionary *JBDic = [[NSMutableDictionary alloc] init];
                           [JBDic setObject:JBDateString forKey:@"JBDateString"];
                           NSMutableArray *JBData = [[NSMutableArray alloc] init];
                           [JBDic setObject:JBData forKey:@"JBData"];
                           [self.JBDataArray addObject:JBDic];
                           for (int j = 0; j < JBTempDataArray.count; j++) {
                               JBLifeModel *JBmodel = JBTempDataArray[j];
                               if ([JBmodel.JBNoteDateString isEqualToString:JBDateString]) {
                                   [JBData addObject:JBmodel];
                               }
                           }
                       }
                    [weakSelf.JBmainTable.mj_header endRefreshing];
                    [weakSelf.JBmainTable reloadData];
                   }else{
                       [weakSelf.JBmainTable.mj_header endRefreshing];
                       [MBProgressHUD JBshowReminderText:NSLocalizedString(@"暂无数据", nil)];
                   }
              }
           }];
}
- (void)JBDeleteData:(JBLifeModel *)JBmodel{
    
}
- (void)JBaddAction:(UIButton *)JBsender{
    JBHomeAddNoteViewController *JBHomeAddNoteVC = [[JBHomeAddNoteViewController alloc] init];
    JBHomeAddNoteVC.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:JBHomeAddNoteVC animated:YES];
}
#pragma mark - UITableViewDelegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return self.JBDataArray.count;
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 40;
}
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    NSMutableDictionary *JBDic = self.JBDataArray[section];
    NSString *JBDateString = [JBDic objectForKey:@"JBDateString"];
    JBHomeHeaderView *JBHeader = [tableView dequeueReusableHeaderFooterViewWithIdentifier:@"JBHomeHeaderView"];
    JBHeader.JBTitleString = JBDateString;
    return JBHeader;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    NSMutableDictionary *JBDic = self.JBDataArray[section];
    NSMutableArray *JBData = [JBDic objectForKey:@"JBData"];
    return JBData.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSMutableDictionary *JBDic = self.JBDataArray[indexPath.section];
    NSMutableArray *JBData = [JBDic objectForKey:@"JBData"];
    JBLifeModel *JBmodel = JBData[indexPath.row];
    JBHomeTableViewCell *JBCell = [tableView dequeueReusableCellWithIdentifier:@"JBHomeTableViewCell" forIndexPath:indexPath];
    JBCell.JBlifemodel = JBmodel;
    return JBCell;
}
-(BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath{
    return YES;
}
-(UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath{
    return UITableViewCellEditingStyleDelete;
}
-(NSString *)tableView:(UITableView *)tableView titleForDeleteConfirmationButtonForRowAtIndexPath:(NSIndexPath *)indexPath{
   return NSLocalizedString(@"删除", nil);
}
-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
    JBLifeModel *JBModel = self.JBDataArray[indexPath.row];
    if(editingStyle == UITableViewCellEditingStyleDelete){
       [self.JBDataArray removeObjectAtIndex:indexPath.row];
       [self JBDeleteData:JBModel];
       [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
    }
}
#pragma mark - 属性懒加载
- (UIImageView *)JBHeadImgView{
    if (!_JBHeadImgView) {
        _JBHeadImgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"JBHome_changheluori"]];
    }
    return _JBHeadImgView;
}
- (NSMutableArray *)JBDataArray{
    if (!_JBDataArray) {
        _JBDataArray = [[NSMutableArray alloc] init];
    }
    return _JBDataArray;
}
- (UIButton *)JBaddButton{
    if (!_JBaddButton) {
        _JBaddButton = [[UIButton alloc] init];
        [_JBaddButton setImage:[UIImage imageNamed:@"JB_add"] forState:UIControlStateNormal];
        [_JBaddButton setImage:[UIImage imageNamed:@"JB_add"] forState:UIControlStateHighlighted];
        [_JBaddButton addTarget:self action:@selector(JBaddAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _JBaddButton;
}
- (UITableView *)JBmainTable{
    if (!_JBmainTable) {
        _JBmainTable = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, JBWIDTH, JBHEIGHT) style:UITableViewStyleGrouped];
        _JBmainTable.rowHeight = UITableViewAutomaticDimension;
        _JBmainTable.estimatedRowHeight = 55.0f;
        _JBmainTable.sectionHeaderHeight = UITableViewAutomaticDimension;
        _JBmainTable.estimatedSectionHeaderHeight = 30.0f;
        _JBmainTable.dataSource = self;
        _JBmainTable.delegate = self;
        _JBmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        [_JBmainTable registerClass:[JBHomeTableViewCell class] forCellReuseIdentifier:@"JBHomeTableViewCell"];
        [_JBmainTable registerClass:[JBHomeHeaderView class] forHeaderFooterViewReuseIdentifier:@"JBHomeHeaderView"];
        [self.view addSubview:_JBmainTable];
        [_JBmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.JBHeadImgView.mas_bottom);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view);
        }];
        _JBmainTable.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(JBLoadData)];
    }
    return _JBmainTable;
}
@end
