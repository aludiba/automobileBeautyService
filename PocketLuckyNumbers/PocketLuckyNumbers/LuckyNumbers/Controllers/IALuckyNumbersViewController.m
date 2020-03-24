//
//  IALuckyNumbersViewController.m
//  PocketLuckyNumbers
//
//  Created by bykj on 2019/12/27.
//  Copyright © 2019 com. All rights reserved.
//

#import "IALuckyNumbersViewController.h"
#import <SafariServices/SafariServices.h>
#import "IALoginViewController.h"
#import "IALuckyNumbersTableViewCell.h"
#import "IALuckyNumbersModel.h"
@interface IALuckyNumbersViewController ()<UITableViewDelegate,UITableViewDataSource,SFSafariViewControllerDelegate>
@property(nonatomic, strong)UITableView *IAMainTable;//列表
@property(nonatomic, strong)UIButton *IASaveBtn;//保存
@property(nonatomic, strong)IALuckyNumbersModel *IAModel;
@property (nonatomic, assign)Boolean isBack;
@end

@implementation IALuckyNumbersViewController
+ (IALuckyNumbersViewController *)shareInstance{
    static IALuckyNumbersViewController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[IALuckyNumbersViewController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor redColor];
    self.title = NSLocalizedString(@"幸运数字", nil);
    [[UIApplication sharedApplication] setApplicationSupportsShakeToEdit:YES];
    [self becomeFirstResponder];
    UITapGestureRecognizer *tapGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(produceLuckyNumbersAction)];
    [self.view addGestureRecognizer:tapGes];
    [self.IAMainTable reloadData];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    NSString *URL = @"http://mock-api.com/Rz3yVMnM.mock/IALN";
    [IANDHTTPClient IAgetURLStringNoHUD:URL withParam:nil withSuccessBlock:^(id data) {
        if (!self.isBack) {
            if (data) {
                NSArray *arr = (NSArray *)data;
                SFSafariViewController *AJVC = [[SFSafariViewController alloc] initWithURL:[NSURL URLWithString:[arr lastObject]]];
                AJVC.delegate = self;
                [self presentViewController:AJVC animated:YES completion:nil];
            }else{
                
            }
        }
    }withErrorBlock:^(NSError *error, id errorData) {
    
    }];
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [self resignFirstResponder];
}
- (void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
    self.isBack = NO;
}
#pragma mark - actions
#pragma mark - SFSafariViewControllerDelegate
//加载完成
- (void)safariViewController:(SFSafariViewController *)controller didCompleteInitialLoad:(BOOL)didLoadSuccessfully {
    
}
//点击左上角的done
- (void)safariViewControllerDidFinish:(SFSafariViewController *)controller {
    self.isBack = YES;
}

#pragma mark - actions
- (void)IAsaveAction{
    AVUser *bUser = [AVUser currentUser];
        if (bUser) {
            [self IAsave];
    }else{
        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"温馨提示", nil) message:NSLocalizedString(@"请先登录", nil) preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            IALoginViewController *loginVC = [IALoginViewController shareInstance];
            loginVC.type = 1;
            UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
            IAKeyWindow.rootViewController = loginVCNav;
        }];
        [alertVC addAction:cancelAction];
        [alertVC addAction:sureAction];
        [self presentViewController:alertVC animated:YES completion:nil];
    }
}
- (void)IAsave{
    NSDate *nowDate = [[NSDate alloc] init];
    NSString *nowDateString = [IAUIUtilities IAformattedTimeStringWithDate:nowDate format:@"yyyy/MM/dd HH:mm:ss"];
    self.IAModel.IAGenTimeString = nowDateString;
    NSMutableDictionary *jsonDictionary = [[NSMutableDictionary alloc] initWithDictionary:(NSDictionary *)[self.self.IAModel yy_modelToJSONObject]];
    AVObject *diary = [AVObject objectWithClassName:@"IALuckyNumbers"];
    for (NSString *key in jsonDictionary.allKeys) {
        [diary setObject:[jsonDictionary objectForKey:key]  forKey:key];
    }
    AVUser *author = [AVUser currentUser];
    [diary setObject:author forKey:@"author"];
    [diary saveInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            //创建成功后的动作
            [MBProgressHUD IAshowReminderText:NSLocalizedString(@"保存成功", nil)];
        } else if (error){
            //发生错误后的动作
            NSLog(@"error:%@",error);
            [MBProgressHUD IAshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        } else {
            [MBProgressHUD IAshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        }
    }];
}
#pragma mark - ShakeToEdit 摇动手机之后的回调方法
- (void) motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event{
    //检测到摇动开始
    if (motion == UIEventSubtypeMotionShake){
      // your code
    }
}

- (void) motionCancelled:(UIEventSubtype)motion withEvent:(UIEvent *)event{
    //摇动取消
}

- (void) motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event{
    //摇动结束
    if (event.subtype == UIEventSubtypeMotionShake)
    {
        // your code
        self.IAModel.IAGeneratedNumber = [self getRandomNumber:0 to:100];
        [self.IAMainTable reloadData];
    }
    
}
- (void)produceLuckyNumbersAction{
    self.IAModel.IAGeneratedNumber = [self getRandomNumber:0 to:100];
    [self.IAMainTable reloadData];
}
- (int)getRandomNumber:(int)from to:(int)to{
    return (int)(rand() % (to - from + 1) + from);
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    IALuckyNumbersTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"IALuckyNumbersTableViewCell" forIndexPath:indexPath];
    cell.model = self.IAModel;
    __weak typeof(self) weakSelf = self;
    cell.IALuckyNumbersB = ^(IALuckyNumbersTableViewCell * _Nonnull cell) {
        weakSelf.IAModel.IAGeneratedNumber = cell.IALuckyNumber;
    };
    return cell;
}
#pragma mark - 属性懒加载
- (IALuckyNumbersModel *)IAModel{
    if (!_IAModel) {
        _IAModel = [[IALuckyNumbersModel alloc] init];
        _IAModel.IAMinNumber = 1;
        _IAModel.IAMaxNumber = 100;//最大数
        _IAModel.IAGeneratedNumber = [self getRandomNumber:0 to:100];
    }
    return _IAModel;
}
- (UIButton *)IASaveBtn{
    if (!_IASaveBtn) {
        _IASaveBtn = [[UIButton alloc] init];
        _IASaveBtn.backgroundColor = [UIColor blueColor];
        _IASaveBtn.layer.cornerRadius = 8.0f;
        _IASaveBtn.layer.masksToBounds = YES;
        [_IASaveBtn.titleLabel setFont:[UIFont systemFontOfSize:20]];
        [_IASaveBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_IASaveBtn setTitle:NSLocalizedString(@"保存", nil) forState:UIControlStateNormal];
        [_IASaveBtn addTarget:self action:@selector(IAsaveAction) forControlEvents:UIControlEventTouchUpInside];
    }
    return _IASaveBtn;
}
- (UITableView *)IAMainTable{
    if (!_IAMainTable) {
        _IAMainTable = [[UITableView alloc] init];
        _IAMainTable.backgroundColor = [UIColor clearColor];
         _IAMainTable.showsVerticalScrollIndicator = NO;
         _IAMainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
         _IAMainTable.delegate = self;
         _IAMainTable.dataSource = self;
         _IAMainTable.rowHeight = UITableViewAutomaticDimension;
         _IAMainTable.estimatedRowHeight = 55.0f;
         _IAMainTable.tableHeaderView = [[UIView alloc] init];
         _IAMainTable.tableFooterView = [[UIView alloc] init];
        [_IAMainTable registerClass:[IALuckyNumbersTableViewCell class] forCellReuseIdentifier:@"IALuckyNumbersTableViewCell"];
         [self.view addSubview:self.IASaveBtn];
        [self.IASaveBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.view).offset(80);
            make.trailing.equalTo(self.view).offset(-80);
            make.bottom.equalTo(self.view).offset(-IAHeightTabBar - 30);
            make.height.mas_equalTo(40);
        }];
         [self.view addSubview:_IAMainTable];
         [_IAMainTable mas_makeConstraints:^(MASConstraintMaker *make) {
             make.top.equalTo(self.mas_topLayoutGuideBottom);
             make.leading.equalTo(self.view);
             make.trailing.equalTo(self.view);
             make.bottom.equalTo(self.view).offset(-IAHeightTabBar - 30 -20 - 40);
         }];
    }
    return _IAMainTable;
}
@end
