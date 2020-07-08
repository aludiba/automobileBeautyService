//
//  LBSetViewController.m
//  MacroSports
//
//  Created by user on 2020/7/4.
//  Copyright © 2020 macro. All rights reserved.
//

#import "LBSetViewController.h"
#import "LBSetTableViewCell.h"
#import "LBSetViewModel.h"
#import "LBAboutUsViewController.h"
#import "LBFeedbackViewController.h"
#import "LBLoginViewController.h"
@interface LBSetViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSMutableArray *LBViewDataArray;
@property(nonatomic, strong)UIImageView *LBmainImgView;
@property(nonatomic, strong)UITableView *LBmainTable;
@end

@implementation LBSetViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"个人中心";
    [self LBSetContentView];
}
#pragma mark - actions
- (void)LBSetContentView{
    self.view.backgroundColor = [UIColor cyanColor];
    LBSetViewModel *LBAboutUsViewModel = [[LBSetViewModel alloc] init];
    LBAboutUsViewModel.LBtitle = @"关于我们";
    [self.LBViewDataArray addObject:LBAboutUsViewModel];
    
    LBSetViewModel *LBfeedbackViewModel = [[LBSetViewModel alloc] init];
    LBfeedbackViewModel.LBtitle = @"意见反馈";
    [self.LBViewDataArray addObject:LBfeedbackViewModel];
    
    LBSetViewModel *LBshareViewModel = [[LBSetViewModel alloc] init];
    LBshareViewModel.LBtitle = @"分享";
    [self.LBViewDataArray addObject:LBshareViewModel];
    
    LBSetViewModel *LBexitViewModel = [[LBSetViewModel alloc] init];
    LBexitViewModel.LBtitle = @"退出";
    [self.LBViewDataArray addObject:LBexitViewModel];
    
    [self.LBmainTable reloadData];
}
#pragma mark - 关于我们
- (void)LBaboutUsAction{
    LBAboutUsViewController *LBAboutUsVC = [[LBAboutUsViewController alloc] init];
    [self.navigationController pushViewController:LBAboutUsVC animated:YES];
}
#pragma mark - 意见反馈
- (void)LBfeedbackAction{
    AVUser *LBbUser = [AVUser currentUser];
    if (LBbUser) {
    LBFeedbackViewController *LBFeedbackVC = [[LBFeedbackViewController alloc] init];
    [self.navigationController pushViewController:LBFeedbackVC animated:YES];
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
#pragma mark - 分享
- (void)LBDqdshareAction{
    AVQuery *LBfenxiang = [AVQuery queryWithClassName:@"LBfenxiang"];
    [LBfenxiang findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
        NSDictionary *LBDic = (NSDictionary *)[array firstObject];
        NSString *LBstring = [LBDic objectForKey:@"LBDqdshare"];
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:LBstring] options:@{} completionHandler:nil];
    }];
}
#pragma mark - 退出登录
- (void)LBlogOutAction{
    [AVUser logOut];
    LBLoginViewController *LBLoginVC = [[LBLoginViewController alloc] init];
    LBLoginVC.modalPresentationStyle = UIModalPresentationFullScreen;
    [self presentViewController:LBLoginVC animated:NO completion:^{
        
    }];
}
#pragma mark - UITableViewDelegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.LBViewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    LBSetViewModel *LBsetviewmodel = self.LBViewDataArray[indexPath.row];
    LBSetTableViewCell *LBCell = [tableView dequeueReusableCellWithIdentifier:@"LBSetTableViewCell" forIndexPath:indexPath];
    LBCell.LBsetviewmodel = LBsetviewmodel;
    LBCell.selectionStyle = UITableViewCellSelectionStyleNone;
    return LBCell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row == 0) {
        [self LBaboutUsAction];
    }else if (indexPath.row == 1){
        [self LBfeedbackAction];
    }else if (indexPath.row == 2){
        [self LBDqdshareAction];
    }else{
        [self LBlogOutAction];
    }
}
#pragma mark - UIScrollViewDelegate
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    [self.view endEditing:YES];
}
#pragma mark - 关闭键盘
- (void)LBcloseKeyboard:(UITapGestureRecognizer *)recognizer {
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (NSMutableArray *)LBViewDataArray{
    if (!_LBViewDataArray) {
        _LBViewDataArray = [[NSMutableArray alloc] init];
    }
    return _LBViewDataArray;
}
- (UIImageView *)LBmainImgView{
    if (!_LBmainImgView) {
        _LBmainImgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"LBSet_footballlogo"]];
    }
    return _LBmainImgView;
}
- (UITableView *)LBmainTable{
    if (!_LBmainTable) {
        _LBmainTable = [[UITableView alloc] init];
        _LBmainTable.showsVerticalScrollIndicator = NO;
        _LBmainTable.scrollEnabled = NO;
        _LBmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _LBmainTable.delegate = self;
        _LBmainTable.dataSource = self;
        _LBmainTable.rowHeight = UITableViewAutomaticDimension;
        _LBmainTable.estimatedRowHeight = 55.0f;
        _LBmainTable.tableHeaderView = [[UIView alloc] init];
        _LBmainTable.tableFooterView = [[UIView alloc] init];
        [_LBmainTable registerClass:[LBSetTableViewCell class] forCellReuseIdentifier:@"LBSetTableViewCell"];
        UITapGestureRecognizer *LBsingleTapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(LBcloseKeyboard:)];
        LBsingleTapGesture.numberOfTapsRequired = 1;
        LBsingleTapGesture.cancelsTouchesInView = NO;
        [_LBmainTable addGestureRecognizer:LBsingleTapGesture];
        [self.view addGestureRecognizer:LBsingleTapGesture];
        UIPanGestureRecognizer *LBpanGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(LBcloseKeyboard:)];
        [self.view addGestureRecognizer:LBpanGesture];
        [self.view addSubview:self.LBmainImgView];
        [self.LBmainImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.view).offset((LBWIDTH - 100) * 0.5);
            make.top.equalTo(self.mas_topLayoutGuideBottom).offset(40);
            make.width.mas_equalTo(100);
            make.height.mas_equalTo(150);
        }];
        [self.view addSubview:_LBmainTable];
        [_LBmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.view);
            make.top.equalTo(self.LBmainImgView.mas_bottom).offset(40);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view);
        }];
    }
    return _LBmainTable;
}
@end
