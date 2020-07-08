//
//  LBLoginViewController.m
//  MacroSports
//
//  Created by user on 2020/7/7.
//  Copyright © 2020 macro. All rights reserved.
//

#import "LBLoginViewController.h"
#import "LBLoginModel.h"
#import "LBLoginTextCell.h"
#import "LBLoginActionTableViewCell.h"

@interface LBLoginViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)UIButton *LBCloseBtn;
@property(nonatomic, strong)UITableView *LBmainTable;
@property(nonatomic, strong)LBLoginModel *LBloginmodel;
@property(nonatomic, assign)NSInteger LBIndexAction;
@end

@implementation LBLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self LBSetContentView];
}
#pragma mark - actions
- (void)LBSetContentView{
    [self.view addSubview:self.LBCloseBtn];
    [self.view addSubview:self.LBmainTable];
    [self.LBCloseBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view).offset(LBHeightNavBar);
        make.trailing.equalTo(self.view).offset(-32);
        make.width.mas_equalTo(22);
        make.height.mas_equalTo(22);
    }];
    [self.LBmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.LBCloseBtn.mas_bottom).offset(32);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
        make.bottom.equalTo(self.mas_bottomLayoutGuideTop);
    }];
}
- (void)LBCloseAction:(UIButton *)sender{
    [self dismissViewControllerAnimated:NO completion:^{
        
    }];
}
- (void)LBloginAction{
    [AVUser logInWithUsernameInBackground:self.LBloginmodel.LBAccount password:self.LBloginmodel.LBPassword block:^(AVUser * _Nullable user, NSError * _Nullable error) {
        if (user) {
            [MBProgressHUD LBshowReminderText:@"登陆成功"];
            [self dismissViewControllerAnimated:YES completion:^{
                
            }];
        } else {
            [MBProgressHUD LBshowReminderText:@"请稍后重试"];
        }
    }];
}
- (void)LBregistered{
    AVUser *LBUser = [[AVUser alloc] init];
    [LBUser setUsername:self.LBloginmodel.LBAccount];
    [LBUser setPassword:self.LBloginmodel.LBPassword];
    [LBUser signUpInBackgroundWithBlock:^(BOOL succeeded, NSError * _Nullable error) {
        if (succeeded) {
            [MBProgressHUD LBshowReminderText:@"注册成功"];
            [AVUser logInWithUsernameInBackground:self.LBloginmodel.LBAccount password:self.LBloginmodel.LBPassword block:^(AVUser * _Nullable user, NSError * _Nullable error) {
                if (user) {
                    [self dismissViewControllerAnimated:YES completion:^{
                                       
                    }];
                } else {
                    [MBProgressHUD LBshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                }
            }];
        } else {
            [MBProgressHUD LBshowReminderText:@"请稍后重试"];
        }
    }];
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 3;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row == 0) {
        LBLoginTextCell *LBCell = [tableView dequeueReusableCellWithIdentifier:@"LBLoginTextCell" forIndexPath:indexPath];
        LBCell.LBlogintype = LBLoginTypeAccount;
        LBCell.LBModel = self.LBloginmodel;
        LBCell.selectionStyle = UITableViewCellSelectionStyleNone;
        return LBCell;
    }else if (indexPath.row == 1){
        LBLoginTextCell *LBCell = [tableView dequeueReusableCellWithIdentifier:@"LBLoginTextCell" forIndexPath:indexPath];
        LBCell.LBlogintype = LBLoginTypePassword;
        LBCell.LBModel = self.LBloginmodel;
        LBCell.selectionStyle = UITableViewCellSelectionStyleNone;
        return LBCell;
    }else{
       LBLoginActionTableViewCell *LBCell = [tableView dequeueReusableCellWithIdentifier:@"LBLoginActionTableViewCell" forIndexPath:indexPath];
        LBCell.selectionStyle = UITableViewCellSelectionStyleNone;
        LBWeakSelf(self);
        LBCell.LBLoginActionB = ^(LBLoginActionTableViewCell * _Nonnull LBcell) {
            LBStrongSelf(self);
            self.LBIndexAction = LBcell.LBIndex;
            [self.view endEditing:YES];
            if (!self.LBloginmodel.LBAccount.length) {
                [MBProgressHUD LBshowReminderText:@"请输入账号"];
                return;
            }
            if (!self.LBloginmodel.LBPassword.length) {
                [MBProgressHUD LBshowReminderText:@"请输入密码"];
                return;
            }
            if (self.LBIndexAction == 99) {
                [self LBloginAction];
            }else{
                [self LBregistered];
            }
        };
        return LBCell;
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
- (LBLoginModel *)LBloginmodel{
    if (!_LBloginmodel) {
        _LBloginmodel = [[LBLoginModel alloc] init];
        _LBloginmodel.LBAccountTitle = @"账号：";
        _LBloginmodel.LBAccountDefault = @"请输入账号";
        _LBloginmodel.LBPasswordTitle = @"密码：";
        _LBloginmodel.LBPasswordDefault = @"请输入密码";
    }
    return _LBloginmodel;
}
- (UIButton *)LBCloseBtn{
    if (!_LBCloseBtn) {
        _LBCloseBtn = [[UIButton alloc] init];
        [_LBCloseBtn setImage:[UIImage imageNamed:@"LBSet_chahao"] forState:UIControlStateNormal];
        [_LBCloseBtn addTarget:self action:@selector(LBCloseAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _LBCloseBtn;
}
- (UITableView *)LBmainTable{
    if (!_LBmainTable) {
        _LBmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
        _LBmainTable.backgroundColor = [UIColor whiteColor];
        _LBmainTable.showsVerticalScrollIndicator = NO;
        _LBmainTable.scrollEnabled = NO;
        _LBmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _LBmainTable.delegate = self;
        _LBmainTable.dataSource = self;
        _LBmainTable.rowHeight = UITableViewAutomaticDimension;
        _LBmainTable.estimatedRowHeight = 55.0f;
        _LBmainTable.tableHeaderView = [[UIView alloc] init];
        _LBmainTable.tableFooterView = [[UIView alloc] init];
        [_LBmainTable registerClass:[LBLoginTextCell class] forCellReuseIdentifier:@"LBLoginTextCell"];
        [_LBmainTable registerClass:[LBLoginActionTableViewCell class] forCellReuseIdentifier:@"LBLoginActionTableViewCell"];
        UITapGestureRecognizer *LBsingleTapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(LBcloseKeyboard:)];
        LBsingleTapGesture.numberOfTapsRequired = 1;
        LBsingleTapGesture.cancelsTouchesInView = NO;
        [_LBmainTable addGestureRecognizer:LBsingleTapGesture];
        [self.view addGestureRecognizer:LBsingleTapGesture];
        UIPanGestureRecognizer *LBpanGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(LBcloseKeyboard:)];
        [self.view addGestureRecognizer:LBpanGesture];
    }
    return _LBmainTable;
}
@end

