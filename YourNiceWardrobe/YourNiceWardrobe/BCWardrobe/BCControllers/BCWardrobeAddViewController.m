//
//  BCWardrobeAddViewController.m
//  YourNiceWardrobe
//
//  Created by 褚红彪 on 2020/5/3.
//  Copyright © 2020 hb. All rights reserved.
//

#import "BCWardrobeAddViewController.h"
#import "BCWardrobeAddTableViewCell.h"
#import "BCWardrobeAddModel.h"
#import "BCWardrobeViewController.h"
#import "BCWardrobeModel.h"

@interface BCWardrobeAddViewController ()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic, strong)BCWardrobeModel *BCModel;
@property(nonatomic, strong)NSMutableArray *BCViewDataArray;
@property(nonatomic, strong)UIButton *BCsaveButton;//保存按钮
@property(nonatomic, strong)UITableView *BCmainTable;//列表
@end

@implementation BCWardrobeAddViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(BCkeyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];
    self.title = @"添加";
    [self BCsetContentView];
}
- (void)BCkeyboardWillHide:(NSNotification *)BCnote{
//    self.isDetails = NO;
    //取得键盘弹出时间
    CGFloat BCduration = [BCnote.userInfo[UIKeyboardAnimationDurationUserInfoKey] floatValue];
    //取得键盘高度
       [UIView animateWithDuration:BCduration delay:0 options:7 << 16 animations:^{
           self.view.transform = CGAffineTransformIdentity;
           self.view.frame = self.view.bounds;
       } completion:nil];
}
#pragma mark - actions
- (void)BC_setupNavigationItems{
    [super BC_setupNavigationItems];
    UIBarButtonItem *BCsaveButton = [[UIBarButtonItem alloc] initWithCustomView:self.BCsaveButton];
    self.navigationItem.rightBarButtonItem = BCsaveButton;
}
- (void)BCsetContentView{
    BCWardrobeAddModel *BCtypesViewModel = [[BCWardrobeAddModel alloc] init];
    BCtypesViewModel.BCTitle = @"类型:";
    BCtypesViewModel.BCDefault = @"请输入类型";
    [self.BCViewDataArray addObject:BCtypesViewModel];
    
    BCWardrobeAddModel *BCnumberViewModel = [[BCWardrobeAddModel alloc] init];
    BCnumberViewModel.BCTitle = @"尺码:";
    BCnumberViewModel.BCDefault = @"请输入尺码数";
    [self.BCViewDataArray addObject:BCnumberViewModel];
    
    BCWardrobeAddModel *BCstorageViewModel = [[BCWardrobeAddModel alloc] init];
    BCstorageViewModel.BCTitle = @"储存位置:";
    BCstorageViewModel.BCDefault = @"请输入储存位置";
    [self.BCViewDataArray addObject:BCstorageViewModel];
    
    BCWardrobeAddModel *BCpurchasetimeViewModel = [[BCWardrobeAddModel alloc] init];
    BCpurchasetimeViewModel.BCTitle = @"购买时间:";
    BCpurchasetimeViewModel.BCDefault = @"请输入购买时间";
    [self.BCViewDataArray addObject:BCpurchasetimeViewModel];
    
    [self.BCmainTable reloadData];
}
- (void)BCsaveAction:(UIButton *)sender{
    for (int i = 0; i < self.BCViewDataArray.count; i++) {
        BCWardrobeAddModel *BCviewModel = self.BCViewDataArray[i];
        NSString *BCcontentString = [BCHBTool BCremoveSpaceAndNewline:BCviewModel.BCContent];
        if (!BCcontentString.length) {
            if (i == 0) {
                [MBProgressHUD BCshowReminderText:@"请输入类型"];
                return;
            }else if (i == 1){
                [MBProgressHUD BCshowReminderText:@"请输入尺码数"];
                return;
            }else if (i == 2){
                [MBProgressHUD BCshowReminderText:@"请输入储存位置"];
                return;
            }else if (i == 3){
                [MBProgressHUD BCshowReminderText:@"请输入购买时间"];
                return;
            }
        }
    }
    BCWardrobeAddModel *BCtypesviewModel = self.BCViewDataArray[0];
    self.BCModel.BCtypes = BCtypesviewModel.BCContent;
    BCWardrobeAddModel *BCnumberviewModel = self.BCViewDataArray[1];
    self.BCModel.BCnumber = BCnumberviewModel.BCContent;
    BCWardrobeAddModel *BCstorageviewModel = self.BCViewDataArray[2];
    self.BCModel.BCstorage = BCstorageviewModel.BCContent;
    BCWardrobeAddModel *BCpurchasetimeviewModel = self.BCViewDataArray[3];
    self.BCModel.BCpurchasetime = BCpurchasetimeviewModel.BCContent;
    NSMutableDictionary *BCjsonDictionary = [[NSMutableDictionary alloc] initWithDictionary:(NSDictionary *)[self.BCModel yy_modelToJSONObject]];
    AVUser *BCauthor = [AVUser currentUser];
    AVObject *BCdiary = [AVObject objectWithClassName:@"BCWardrobe"];
    for (NSString *BCkey in BCjsonDictionary.allKeys) {
        [BCdiary setObject:[BCjsonDictionary objectForKey:BCkey]  forKey:BCkey];
    }
    [BCdiary setObject:BCauthor forKey:@"author"];
    [BCdiary saveInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            //创建成功后的动作
            [MBProgressHUD BCshowReminderText:NSLocalizedString(@"保存成功", nil)];
            [self.BCsuperVC.BCmainTable.mj_header beginRefreshing];
            [self.navigationController popToRootViewControllerAnimated:YES];
        } else if (error){
            //发生错误后的动作
            [MBProgressHUD BCshowReminderText:@"请稍后重试"];
        } else {
            [MBProgressHUD BCshowReminderText:@"请稍后重试"];
        }
    }];
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.BCViewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    BCWardrobeAddModel *BCViewModel = self.BCViewDataArray[indexPath.row];
    NSString *BCKMyCellID = @"BCWardrobeAddTableViewCell";
    NSString *BCcellID = [NSString stringWithFormat:@"%@%zd",BCKMyCellID, indexPath.row];
    BCWardrobeAddTableViewCell *BCcell = [tableView dequeueReusableCellWithIdentifier:BCcellID];
    if (!BCcell) {
        BCcell = [[BCWardrobeAddTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:BCcellID];
    }
    BCcell.BCViewModel = BCViewModel;
    BCcell.selectionStyle = UITableViewCellSelectionStyleNone;
    __weak typeof(self) weakSelf = self;
    BCcell.BCeditBlock = ^(BCWardrobeAddTableViewCell * _Nonnull cell) {
        if ([BCViewModel.BCTitle hasPrefix:@"购买时间"]) {
        if (BCcell.BCcontentHeight > BCViewModel.BCEditHeight) {
        [UIView animateWithDuration:0.2 animations:^{
            CGRect BCframe = self.view.frame;
            BCframe.origin.y = BCframe.origin.y -  22;
            self.view.frame = BCframe;
        }];
        }
        }
        BCViewModel.BCEditHeight = cell.BCcontentHeight;
        [weakSelf.BCmainTable beginUpdates];
        [weakSelf.BCmainTable endUpdates];
    };
    return BCcell;
}
#pragma mark - UIScrollViewDelegate
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    [self.view endEditing:YES];
}
#pragma mark - 关闭键盘
- (void)BCcloseKeyboard:(UITapGestureRecognizer *)recognizer{
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (BCWardrobeModel *)BCModel{
    if (!_BCModel) {
        _BCModel = [[BCWardrobeModel alloc] init];
    }
    return _BCModel;
}
- (NSMutableArray *)BCViewDataArray{
    if (!_BCViewDataArray) {
        _BCViewDataArray = [[NSMutableArray alloc] init];
    }
    return _BCViewDataArray;
}
- (UIButton *)BCsaveButton{
    if (!_BCsaveButton) {
        _BCsaveButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
        [_BCsaveButton setTitle:@"保存" forState:UIControlStateNormal];
        [_BCsaveButton addTarget:self action:@selector(BCsaveAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _BCsaveButton;
}
- (UITableView *)BCmainTable{
    if (!_BCmainTable) {
        _BCmainTable = [[UITableView alloc] init];
        _BCmainTable.rowHeight = UITableViewAutomaticDimension;
        _BCmainTable.estimatedRowHeight = 48.0f;
        _BCmainTable.dataSource = self;
        _BCmainTable.delegate = self;
        _BCmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        UITapGestureRecognizer *BCsingleTapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(BCcloseKeyboard:)];
        BCsingleTapGesture.numberOfTapsRequired = 1;
        BCsingleTapGesture.cancelsTouchesInView = NO;
        [_BCmainTable addGestureRecognizer:BCsingleTapGesture];
        [self.view addGestureRecognizer:BCsingleTapGesture];
        UIPanGestureRecognizer *BCpanGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(BCcloseKeyboard:)];
        [self.view addGestureRecognizer:BCpanGesture];
        [self.view addSubview:_BCmainTable];
        [_BCmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_topLayoutGuideBottom);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view);
        }];
    }
    return _BCmainTable;
}
@end
