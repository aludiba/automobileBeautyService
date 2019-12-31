//
//  PLNLuckyNumbersViewController.m
//  PocketLuckyNumbers
//
//  Created by bykj on 2019/12/27.
//  Copyright © 2019 com. All rights reserved.
//

#import "PLNLuckyNumbersViewController.h"
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
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [self resignFirstResponder];
}
#pragma mark - actions
- (void)PLNsaveAction{
    
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
        [_PLNSaveBtn.titleLabel setFont:[UIFont systemFontOfSize:20]];
        [_PLNSaveBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_PLNSaveBtn setTitle:NSLocalizedString(@"保存", nil) forState:UIControlStateNormal];
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
         [self.view addSubview:_PLNMainTable];
         [_PLNMainTable mas_makeConstraints:^(MASConstraintMaker *make) {
             make.top.equalTo(self.mas_topLayoutGuideBottom);
             make.leading.equalTo(self.view);
             make.trailing.equalTo(self.view);
             make.bottom.equalTo(self.view).offset(-PLNHeightTabBar);
         }];
    }
    return _PLNMainTable;
}
@end
