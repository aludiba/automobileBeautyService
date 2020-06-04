//
//  FBWardrobeAddViewController.m
//  YourNiceWardrobe
//
//  Created by 褚红彪 on 2020/5/3.
//  Copyright © 2020 hb. All rights reserved.
//

#import "FBWardrobeAddViewController.h"
#import "FBWardrobeAddTableViewCell.h"
#import "FBWardrobeAddModel.h"
#import "FBWardrobeViewController.h"
#import "FBWardrobeModel.h"

@interface FBWardrobeAddViewController ()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic, strong)FBWardrobeModel *FBModel;
@property(nonatomic, strong)NSMutableArray *FBViewDataArray;
@property(nonatomic, strong)UIButton *FBsaveButton;//保存按钮
@property(nonatomic, strong)UITableView *FBmainTable;//列表
@end

@implementation FBWardrobeAddViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(FBkeyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];
    self.title = @"添加";
    [self FBsetContentView];
}
- (void)FBkeyboardWillHide:(NSNotification *)FBnote{
//    self.isDetails = NO;
    //取得键盘弹出时间
    CGFloat FBduration = [FBnote.userInfo[UIKeyboardAnimationDurationUserInfoKey] floatValue];
    //取得键盘高度
       [UIView animateWithDuration:FBduration delay:0 options:7 << 16 animations:^{
           self.view.transform = CGAffineTransformIdentity;
           self.view.frame = self.view.bounds;
       } completion:nil];
}
#pragma mark - actions
- (void)FB_setupNavigationItems{
    [super FB_setupNavigationItems];
    UIBarButtonItem *FBsaveButton = [[UIBarButtonItem alloc] initWithCustomView:self.FBsaveButton];
    self.navigationItem.rightBarButtonItem = FBsaveButton;
}
- (void)FBsetContentView{
    FBWardrobeAddModel *FBtypesViewModel = [[FBWardrobeAddModel alloc] init];
    FBtypesViewModel.FBTitle = @"类型:";
    FBtypesViewModel.FBDefault = @"请输入类型";
    [self.FBViewDataArray addObject:FBtypesViewModel];
    
    FBWardrobeAddModel *FBnumberViewModel = [[FBWardrobeAddModel alloc] init];
    FBnumberViewModel.FBTitle = @"尺码:";
    FBnumberViewModel.FBDefault = @"请输入尺码数";
    [self.FBViewDataArray addObject:FBnumberViewModel];
    
    FBWardrobeAddModel *FBstorageViewModel = [[FBWardrobeAddModel alloc] init];
    FBstorageViewModel.FBTitle = @"储存位置:";
    FBstorageViewModel.FBDefault = @"请输入储存位置";
    [self.FBViewDataArray addObject:FBstorageViewModel];
    
    FBWardrobeAddModel *FBpurchasetimeViewModel = [[FBWardrobeAddModel alloc] init];
    FBpurchasetimeViewModel.FBTitle = @"购买时间:";
    FBpurchasetimeViewModel.FBDefault = @"请输入购买时间";
    [self.FBViewDataArray addObject:FBpurchasetimeViewModel];
    
    [self.FBmainTable reloadData];
}
- (void)FBsaveAction:(UIButton *)sender{
    for (int i = 0; i < self.FBViewDataArray.count; i++) {
        FBWardrobeAddModel *FBviewModel = self.FBViewDataArray[i];
        NSString *FBcontentString = [FBHBTool FBremoveSpaceAndNewline:FBviewModel.FBContent];
        if (!FBcontentString.length) {
            if (i == 0) {
                [MBProgressHUD FBshowReminderText:@"请输入类型"];
                return;
            }else if (i == 1){
                [MBProgressHUD FBshowReminderText:@"请输入尺码数"];
                return;
            }else if (i == 2){
                [MBProgressHUD FBshowReminderText:@"请输入储存位置"];
                return;
            }else if (i == 3){
                [MBProgressHUD FBshowReminderText:@"请输入购买时间"];
                return;
            }
        }
    }
    FBWardrobeAddModel *FBtypesviewModel = self.FBViewDataArray[0];
    self.FBModel.FBtypes = FBtypesviewModel.FBContent;
    FBWardrobeAddModel *FBnumberviewModel = self.FBViewDataArray[1];
    self.FBModel.FBnumber = FBnumberviewModel.FBContent;
    FBWardrobeAddModel *FBstorageviewModel = self.FBViewDataArray[2];
    self.FBModel.FBstorage = FBstorageviewModel.FBContent;
    FBWardrobeAddModel *FBpurchasetimeviewModel = self.FBViewDataArray[3];
    self.FBModel.FBpurchasetime = FBpurchasetimeviewModel.FBContent;
    NSMutableDictionary *FBjsonDictionary = [[NSMutableDictionary alloc] initWithDictionary:(NSDictionary *)[self.FBModel yy_modelToJSONObject]];
    AVUser *FBauthor = [AVUser currentUser];
    AVObject *FBdiary = [AVObject objectWithClassName:@"FBWardrobe"];
    for (NSString *FBkey in FBjsonDictionary.allKeys) {
        [FBdiary setObject:[FBjsonDictionary objectForKey:FBkey]  forKey:FBkey];
    }
    [FBdiary setObject:FBauthor forKey:@"author"];
    [FBdiary saveInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            //创建成功后的动作
            [MBProgressHUD FBshowReminderText:NSLocalizedString(@"保存成功", nil)];
            [self.FBsuperVC.FBmainTable.mj_header beginRefreshing];
            [self.navigationController popToRootViewControllerAnimated:YES];
        } else if (error){
            //发生错误后的动作
            [MBProgressHUD FBshowReminderText:@"请稍后重试"];
        } else {
            [MBProgressHUD FBshowReminderText:@"请稍后重试"];
        }
    }];
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.FBViewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    FBWardrobeAddModel *FBViewModel = self.FBViewDataArray[indexPath.row];
    NSString *FBKMyCellID = @"FBWardrobeAddTableViewCell";
    NSString *FBcellID = [NSString stringWithFormat:@"%@%zd",FBKMyCellID, indexPath.row];
    FBWardrobeAddTableViewCell *FBcell = [tableView dequeueReusableCellWithIdentifier:FBcellID];
    if (!FBcell) {
        FBcell = [[FBWardrobeAddTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:FBcellID];
    }
    FBcell.FBViewModel = FBViewModel;
    FBcell.selectionStyle = UITableViewCellSelectionStyleNone;
    __weak typeof(self) weakSelf = self;
    FBcell.FBeditBlock = ^(FBWardrobeAddTableViewCell * _Nonnull cell) {
        if ([FBViewModel.FBTitle hasPrefix:@"购买时间"]) {
        if (FBcell.FBcontentHeight > FBViewModel.FBEditHeight) {
        [UIView animateWithDuration:0.2 animations:^{
            CGRect FBframe = self.view.frame;
            FBframe.origin.y = FBframe.origin.y -  22;
            self.view.frame = FBframe;
        }];
        }
        }
        FBViewModel.FBEditHeight = cell.FBcontentHeight;
        [weakSelf.FBmainTable beginUpdates];
        [weakSelf.FBmainTable endUpdates];
    };
    return FBcell;
}
#pragma mark - UIScrollViewDelegate
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    [self.view endEditing:YES];
}
#pragma mark - 关闭键盘
- (void)FBcloseKeyboard:(UITapGestureRecognizer *)recognizer{
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (FBWardrobeModel *)FBModel{
    if (!_FBModel) {
        _FBModel = [[FBWardrobeModel alloc] init];
    }
    return _FBModel;
}
- (NSMutableArray *)FBViewDataArray{
    if (!_FBViewDataArray) {
        _FBViewDataArray = [[NSMutableArray alloc] init];
    }
    return _FBViewDataArray;
}
- (UIButton *)FBsaveButton{
    if (!_FBsaveButton) {
        _FBsaveButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
        [_FBsaveButton setTitle:@"保存" forState:UIControlStateNormal];
        [_FBsaveButton addTarget:self action:@selector(FBsaveAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _FBsaveButton;
}
- (UITableView *)FBmainTable{
    if (!_FBmainTable) {
        _FBmainTable = [[UITableView alloc] init];
        _FBmainTable.rowHeight = UITableViewAutomaticDimension;
        _FBmainTable.estimatedRowHeight = 48.0f;
        _FBmainTable.dataSource = self;
        _FBmainTable.delegate = self;
        _FBmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        UITapGestureRecognizer *FBsingleTapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(FBcloseKeyboard:)];
        FBsingleTapGesture.numberOfTapsRequired = 1;
        FBsingleTapGesture.cancelsTouchesInView = NO;
        [_FBmainTable addGestureRecognizer:FBsingleTapGesture];
        [self.view addGestureRecognizer:FBsingleTapGesture];
        UIPanGestureRecognizer *FBpanGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(FBcloseKeyboard:)];
        [self.view addGestureRecognizer:FBpanGesture];
        [self.view addSubview:_FBmainTable];
        [_FBmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_topLayoutGuideBottom);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view);
        }];
    }
    return _FBmainTable;
}
@end
