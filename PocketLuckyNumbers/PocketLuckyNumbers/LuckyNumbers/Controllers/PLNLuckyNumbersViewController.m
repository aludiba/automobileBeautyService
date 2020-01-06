//
//  PLNLuckyNumbersViewController.m
//  PocketLuckyNumbers
//
//  Created by bykj on 2019/12/27.
//  Copyright © 2019 com. All rights reserved.
//

#import "PLNLuckyNumbersViewController.h"
#import "PLNLoginViewController.h"
#import "PLNLuckyNumbersTableViewCell.h"
#import "PLNLuckyNumbersModel.h"
@interface PLNLuckyNumbersViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)UITableView *PLNMainTable;//列表
@property(nonatomic, strong)UIButton *PLNSaveBtn;//保存
@property(nonatomic, strong)PLNLuckyNumbersModel *PLNModel;
@end

@implementation PLNLuckyNumbersViewController
+ (PLNLuckyNumbersViewController *)shareInstance{
    static PLNLuckyNumbersViewController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[PLNLuckyNumbersViewController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"幸运数字", nil);
    [[UIApplication sharedApplication] setApplicationSupportsShakeToEdit:YES];
    [self becomeFirstResponder];
    UITapGestureRecognizer *tapGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(produceLuckyNumbersAction)];
    [self.view addGestureRecognizer:tapGes];
    self.view.backgroundColor = [UIColor systemRedColor];
    [self.PLNMainTable reloadData];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [self resignFirstResponder];
}
#pragma mark - actions
- (void)PLNsaveAction{
    BmobUser *bUser = [BmobUser currentUser];
        if (bUser) {
            [self PLNsave];
    }else{
        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"温馨提示", nil) message:NSLocalizedString(@"请先登录", nil) preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            PLNLoginViewController *loginVC = [PLNLoginViewController shareInstance];
            loginVC.type = 1;
            UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
            PLNKeyWindow.rootViewController = loginVCNav;
        }];
        [alertVC addAction:cancelAction];
        [alertVC addAction:sureAction];
        [self presentViewController:alertVC animated:YES completion:nil];
    }
}
- (void)PLNsave{
    NSDate *nowDate = [[NSDate alloc] init];
    NSString *nowDateString = [PLNUIUtilities PLNformattedTimeStringWithDate:nowDate format:@"yyyy/MM/dd HH:mm:ss"];
    self.PLNModel.PLNGenTimeString = nowDateString;
    NSMutableDictionary *jsonDictionary = [[NSMutableDictionary alloc] initWithDictionary:(NSDictionary *)[self.self.PLNModel yy_modelToJSONObject]];
    BmobObject *diary = [BmobObject objectWithClassName:@"PLNLuckyNumbers"];
    [diary saveAllWithDictionary:jsonDictionary];
    BmobUser *author = [BmobUser currentUser];
    [diary setObject:author forKey:@"author"];
    [diary saveInBackgroundWithResultBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            //创建成功后的动作
            [MBProgressHUD PLNshowReminderText:NSLocalizedString(@"保存成功", nil)];
        } else if (error){
            //发生错误后的动作
            NSLog(@"error:%@",error);
            [MBProgressHUD PLNshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        } else {
            [MBProgressHUD PLNshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
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
        self.PLNModel.PLNGeneratedNumber = [self getRandomNumber:0 to:100];
        [self.PLNMainTable reloadData];
    }
    
}
- (void)produceLuckyNumbersAction{
    self.PLNModel.PLNGeneratedNumber = [self getRandomNumber:0 to:100];
    [self.PLNMainTable reloadData];
}
- (int)getRandomNumber:(int)from to:(int)to{
    return (int)(rand() % (to - from + 1) + from);
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    PLNLuckyNumbersTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PLNLuckyNumbersTableViewCell" forIndexPath:indexPath];
    cell.model = self.PLNModel;
    __weak typeof(self) weakSelf = self;
    cell.PLNLuckyNumbersB = ^(PLNLuckyNumbersTableViewCell * _Nonnull cell) {
        weakSelf.PLNModel.PLNGeneratedNumber = cell.PLNLuckyNumber;
    };
    return cell;
}
#pragma mark - 属性懒加载
- (PLNLuckyNumbersModel *)PLNModel{
    if (!_PLNModel) {
        _PLNModel = [[PLNLuckyNumbersModel alloc] init];
        _PLNModel.PLNMinNumber = 1;
        _PLNModel.PLNMaxNumber = 100;//最大数
        _PLNModel.PLNGeneratedNumber = [self getRandomNumber:0 to:100];
    }
    return _PLNModel;
}
- (UIButton *)PLNSaveBtn{
    if (!_PLNSaveBtn) {
        _PLNSaveBtn = [[UIButton alloc] init];
        _PLNSaveBtn.backgroundColor = [UIColor systemGreenColor];
        _PLNSaveBtn.layer.cornerRadius = 8.0f;
        _PLNSaveBtn.layer.masksToBounds = YES;
        [_PLNSaveBtn.titleLabel setFont:[UIFont systemFontOfSize:20]];
        [_PLNSaveBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_PLNSaveBtn setTitle:NSLocalizedString(@"保存", nil) forState:UIControlStateNormal];
        [_PLNSaveBtn addTarget:self action:@selector(PLNsaveAction) forControlEvents:UIControlEventTouchUpInside];
    }
    return _PLNSaveBtn;
}
- (UITableView *)PLNMainTable{
    if (!_PLNMainTable) {
        _PLNMainTable = [[UITableView alloc] init];
        _PLNMainTable.backgroundColor = [UIColor systemRedColor];
         _PLNMainTable.showsVerticalScrollIndicator = NO;
         _PLNMainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
         _PLNMainTable.delegate = self;
         _PLNMainTable.dataSource = self;
         _PLNMainTable.rowHeight = UITableViewAutomaticDimension;
         _PLNMainTable.estimatedRowHeight = 55.0f;
         _PLNMainTable.tableHeaderView = [[UIView alloc] init];
         _PLNMainTable.tableFooterView = [[UIView alloc] init];
        [_PLNMainTable registerClass:[PLNLuckyNumbersTableViewCell class] forCellReuseIdentifier:@"PLNLuckyNumbersTableViewCell"];
         [self.view addSubview:self.PLNSaveBtn];
        [self.PLNSaveBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.view).offset(60);
            make.trailing.equalTo(self.view).offset(-60);
            make.bottom.equalTo(self.view).offset(-PLNHeightTabBar - 30);
            make.height.mas_equalTo(40);
        }];
         [self.view addSubview:_PLNMainTable];
         [_PLNMainTable mas_makeConstraints:^(MASConstraintMaker *make) {
             make.top.equalTo(self.mas_topLayoutGuideBottom);
             make.leading.equalTo(self.view);
             make.trailing.equalTo(self.view);
             make.bottom.equalTo(self.view).offset(-PLNHeightTabBar - 30 -20 - 40);
         }];
    }
    return _PLNMainTable;
}
@end
