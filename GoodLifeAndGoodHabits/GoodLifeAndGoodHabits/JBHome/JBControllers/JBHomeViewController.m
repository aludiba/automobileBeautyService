//
//  JBHomeViewController.m
//  GoodLifeAndGoodHabits
//
//  Created by user on 2020/6/9.
//  Copyright © 2020 user. All rights reserved.
//

#import "JBHomeViewController.h"
#import "JBLifeModel.h"

@interface JBHomeViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)UIImageView *JBHeadImgView;//头图片
@property(nonatomic, strong)UITableView *JBmainTable;//列表
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
    [self.JBmainTable reloadData];
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
    
}
- (void)JBDeleteData:(JBLifeModel *)JBmodel{
    
}
- (void)JBaddAction:(UIButton *)JBsender{
    NSLog(@"新增~~~");
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.JBDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
//    JBLifeModel *JBmodel = self.JBDataArray[indexPath.row];
//
//    return cell;
    return nil;
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
        _JBmainTable = [[UITableView alloc] init];
        _JBmainTable.rowHeight = UITableViewAutomaticDimension;
        _JBmainTable.estimatedRowHeight = 48.0f;
        _JBmainTable.dataSource = self;
        _JBmainTable.delegate = self;
        _JBmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
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
