//
//  LBHomeViewController.m
//  MacroSports
//
//  Created by user on 2020/7/4.
//  Copyright © 2020 macro. All rights reserved.
//

#import "LBHomeViewController.h"
#import "LBSetViewController.h"
#import "LBHomeHeaderView.h"
#import "LBHomeTableViewCell.h"
#import "LBSetViewController.h"
#import "LBTeamViewController.h"
#import "LBStopwatchViewController.h"
#import "LBCreateGameViewController.h"
#import "LBGameListViewController.h"
#import "LBLoginViewController.h"
#import "LBGameTableViewCell.h"
#import "LBGameModel.h"

@interface LBHomeViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)UIButton *LBSetBtn;//设置按钮
@property(nonatomic, strong)UITableView *LBmainTable;//列表
@property(nonatomic, strong)NSMutableArray *LBdataArray;//数据数组
@end

@implementation LBHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"主页";
    [self setContentView];
    [self setContentLayout];
    [self.LBmainTable.mj_header beginRefreshing];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self platoonCharacters:@"abcdef"];
}
- (void)setContentView{
    [self.view addSubview:self.LBmainTable];
}
- (void)setContentLayout{
    [self.LBmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_topLayoutGuideBottom);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
        make.bottom.equalTo(self.view);
    }];
}
//传入一个字符串打印出所有位数组合可能不可出现重复
- (void)platoonCharacters:(NSString *)str{
    NSMutableArray *tempArray = [[NSMutableArray alloc] init];
    for (int i = 0; i < str.length; i++) {
        NSString *tempStr = [str substringWithRange:NSMakeRange(i, 1)];
        [tempArray addObject:tempStr];
    }
    NSMutableArray *compositeStringArray = [[NSMutableArray alloc] init];
    int number = print(tempArray.count);
    Boolean subtract = NO;
    for (int j = 0; j < number; j++) {
        NSMutableString *mString = [[NSMutableString alloc] init];
        NSMutableArray *randomNumberArray = [[NSMutableArray alloc] init];
        for (int i = 0; i < tempArray.count; i++) {
             int tempA = [self getRandomNumber:0 to:(tempArray.count - 1)];
            NSNumber *num = [NSNumber numberWithInt:tempA];
            NSString *charStr;
            if ([randomNumberArray containsObject:num]) {
                i--;
            }else{
                [randomNumberArray addObject:num];
                charStr = tempArray[tempA];
                [mString appendString:charStr];
            }
        }
        if ([compositeStringArray containsObject:mString]) {
            if (!subtract) {
                j--;
            }
            subtract = YES;
        }else{
            [compositeStringArray addObject:mString];
            subtract = NO;
        }
    }
}
//指定范围内的随机数
-(int)getRandomNumber:(int)from to:(int)to{
    return (int)(from + (arc4random() % (to - from + 1)));
}
int print(int n){
    if (n == 0||n == 1) {
        return 1;
    }else{
        return n * print(n-1);
    }
}
- (void)LB_setupNavigationItems {
    self.LBSetBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
    [self.LBSetBtn setImage:[UIImage imageNamed:@"LB_shezhi"] forState:UIControlStateNormal];
    [self.LBSetBtn addTarget:self action:@selector(LBLeftButtonAction) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *LBLeftItem = [[UIBarButtonItem alloc] initWithCustomView:_LBSetBtn];
    self.navigationItem.leftBarButtonItem = LBLeftItem;
}
#pragma mark - actions
- (void)LBLeftButtonAction{
    LBSetViewController *LBSetVC = [[LBSetViewController alloc] init];
    [self.navigationController pushViewController:LBSetVC animated:YES];
}
- (void)LBloadDataAction{
    AVUser *LBauthor = [AVUser currentUser];
    AVQuery *LBdataList = [AVQuery queryWithClassName:@"LBgameList"];
    [LBdataList whereKey:@"author" equalTo:LBauthor];
    __weak typeof(self) weakSelf = self;
    [self.LBdataArray removeAllObjects];
    [LBdataList findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
               if (error) {
                   [weakSelf.LBmainTable.mj_header endRefreshing];
                   [MBProgressHUD LBshowReminderText:@"请稍后重试"];
               }else{
                   if (array.count) {
                   for (int i = (int)(array.count - 1); i > -1; i--) {
                       AVObject *LBobj = array[i];
                       LBGameModel *LBmodel = [[LBGameModel alloc] init];
                       LBmodel.LBobjectId = [LBobj objectId];
                       LBmodel.LBaTeamName = [LBobj objectForKey:@"LBaTeamName"];
                       LBmodel.LBaTeamScore = [LBobj objectForKey:@"LBaTeamScore"];
                       LBmodel.LBbTeamName = [LBobj objectForKey:@"LBbTeamName"];
                       LBmodel.LBbTeamScore = [LBobj objectForKey:@"LBbTeamScore"];
                       LBmodel.LBendDateTime = [LBobj objectForKey:@"LBendDateTime"];
                       [self.LBdataArray addObject:LBmodel];
                   }
                    [weakSelf.LBmainTable.mj_header endRefreshing];
                    [weakSelf.LBmainTable reloadData];
                   }else{
                       [weakSelf.LBmainTable.mj_header endRefreshing];
                       [MBProgressHUD LBshowReminderText:@"暂无数据"];
                   }
              }
           }];
}
- (void)LBdeleteDataAction:(LBGameModel *)LBgamemodel{
    AVObject *LBdataList = [AVObject objectWithClassName:@"LBgameList" objectId:LBgamemodel.LBobjectId];
    LBWeakSelf(self);
    [LBdataList deleteInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
        LBStrongSelf(self);
    if (isSuccessful) {
         //删除成功后的动作
        [MBProgressHUD LBshowReminderText:@"删除成功"];
        [self.LBdataArray removeObject:LBgamemodel];
    }else {
        [MBProgressHUD LBshowReminderText:@"请稍后重试"];
    }
    }];
}
#pragma mark - UITableView代理方法
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.LBdataArray.count;
}
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    LBHomeHeaderView *LBHeader = [tableView dequeueReusableHeaderFooterViewWithIdentifier:@"LBHomeHeaderView"];
    LBHeader.LBHeaderActionBlock = ^(LBHomeHeaderView * _Nonnull header) {
        if (header.LBIndex == 99) {
            AVUser *LBbUser = [AVUser currentUser];
            if (LBbUser) {
            LBTeamViewController *LBTeamVC = [[LBTeamViewController alloc] init];
            [self.navigationController pushViewController:LBTeamVC animated:YES];
            }else{
                UIAlertController *LBalertVC = [UIAlertController alertControllerWithTitle:@"提醒" message:@"请先登录" preferredStyle:UIAlertControllerStyleAlert];
                    UIAlertAction *LBcancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
                    UIAlertAction *LBsureAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                        LBLoginViewController *LBLoginVC = [[LBLoginViewController alloc] init];
                        LBLoginVC.modalPresentationStyle = UIModalPresentationFullScreen;
                        [self presentViewController:LBLoginVC animated:YES completion:^{
                            
                        }];
                    }];
                    [LBalertVC addAction:LBcancelAction];
                    [LBalertVC addAction:LBsureAction];
                    [self presentViewController:LBalertVC animated:YES completion:nil];
                }
        }else if (header.LBIndex == 100){
            NSLog(@"秒表~~~");
            LBStopwatchViewController *LBStopwatchVC = [[LBStopwatchViewController alloc] init];
            [self.navigationController pushViewController:LBStopwatchVC animated:YES];
        }else if (header.LBIndex == 101){
            AVUser *LBbUser = [AVUser currentUser];
            if (LBbUser) {
            LBCreateGameViewController *LBCreateGameVC = [[LBCreateGameViewController alloc] init];
            [self.navigationController pushViewController:LBCreateGameVC animated:YES];
            }else{
                UIAlertController *LBalertVC = [UIAlertController alertControllerWithTitle:@"提醒" message:@"请先登录" preferredStyle:UIAlertControllerStyleAlert];
                    UIAlertAction *LBcancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
                    UIAlertAction *LBsureAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                        LBLoginViewController *LBLoginVC = [[LBLoginViewController alloc] init];
                        LBLoginVC.modalPresentationStyle = UIModalPresentationFullScreen;
                        [self presentViewController:LBLoginVC animated:YES completion:^{
                            
                        }];
                    }];
                    [LBalertVC addAction:LBcancelAction];
                    [LBalertVC addAction:LBsureAction];
                    [self presentViewController:LBalertVC animated:YES completion:nil];
                }
        }else{
            AVUser *LBbUser = [AVUser currentUser];
             if (LBbUser) {
            LBGameListViewController *LBMoreGamesVC = [[LBGameListViewController alloc] init];
             [self.navigationController pushViewController:LBMoreGamesVC animated:YES];
             }else{
                 UIAlertController *LBalertVC = [UIAlertController alertControllerWithTitle:@"提醒" message:@"请先登录" preferredStyle:UIAlertControllerStyleAlert];
                     UIAlertAction *LBcancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
                     UIAlertAction *LBsureAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                         LBLoginViewController *LBLoginVC = [[LBLoginViewController alloc] init];
                         LBLoginVC.modalPresentationStyle = UIModalPresentationFullScreen;
                         [self presentViewController:LBLoginVC animated:YES completion:^{
                             
                         }];
                     }];
                     [LBalertVC addAction:LBcancelAction];
                     [LBalertVC addAction:LBsureAction];
                     [self presentViewController:LBalertVC animated:YES completion:nil];
                 }
        }
    };
    return LBHeader;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    LBGameModel *LBgamemodel = self.LBdataArray[indexPath.row];
    LBGameTableViewCell *LBcell = [tableView dequeueReusableCellWithIdentifier:@"LBGameTableViewCell" forIndexPath:indexPath];
    LBcell.selectionStyle = UITableViewCellSelectionStyleNone;
    LBcell.LBgamemodel = LBgamemodel;
    return LBcell;
}
-(BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return YES;
}
-(UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath{
    return UITableViewCellEditingStyleDelete;
}
-(NSString *)tableView:(UITableView *)tableView titleForDeleteConfirmationButtonForRowAtIndexPath:(NSIndexPath *)indexPath{
   return @"删除";
}
-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
    LBGameModel *LBmodel = self.LBdataArray[indexPath.row];
    if(editingStyle == UITableViewCellEditingStyleDelete){
        [self.LBdataArray removeObjectAtIndex:indexPath.row];
        [self LBdeleteDataAction:LBmodel];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
    }
}
#pragma mark - 属性懒加载
- (NSMutableArray *)LBdataArray{
    if (!_LBdataArray) {
        _LBdataArray = [[NSMutableArray alloc] init];
    }
    return _LBdataArray;
}
- (UIButton *)LBSetBtn{
    if (!_LBSetBtn) {
        _LBSetBtn = [[UIButton alloc] init];
        [_LBSetBtn setImage:[UIImage imageNamed:@"LB_shezhi"] forState:UIControlStateNormal];
    }
    return _LBSetBtn;
}
- (UITableView *)LBmainTable{
    if (!_LBmainTable) {
        _LBmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
        _LBmainTable.backgroundColor = [UIColor whiteColor];
        _LBmainTable.rowHeight = UITableViewAutomaticDimension;
        _LBmainTable.estimatedRowHeight = 48.0f;
        _LBmainTable.sectionHeaderHeight = UITableViewAutomaticDimension;
        _LBmainTable.dataSource = self;
        _LBmainTable.delegate = self;
        _LBmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        [_LBmainTable registerClass:[LBHomeHeaderView class] forHeaderFooterViewReuseIdentifier:@"LBHomeHeaderView"];
        [_LBmainTable registerClass:[LBHomeTableViewCell class] forCellReuseIdentifier:@"LBHomeTableViewCell"];
        [_LBmainTable registerClass:[LBGameTableViewCell class] forCellReuseIdentifier:@"LBGameTableViewCell"];
        _LBmainTable.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(LBloadDataAction)];
    }
    return _LBmainTable;
}
@end
