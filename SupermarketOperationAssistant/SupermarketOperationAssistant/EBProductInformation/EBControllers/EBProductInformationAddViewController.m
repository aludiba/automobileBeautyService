//
//  EBProductInformationAddViewController.m
//  SupermarketOperationAssistant
//
//  Created by 褚红彪 on 2020/5/22.
//  Copyright © 2020 HBC. All rights reserved.
//

#import "EBProductInformationAddViewController.h"
#import "EBProductInformationAddTableViewCell.h"
#import "EBProductInformationAddModel.h"
#import "EBProductInformationViewController.h"
#import "EBProductInformationModel.h"
@interface EBProductInformationAddViewController ()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic, strong)EBProductInformationModel *EBModel;
@property(nonatomic, strong)NSMutableArray *EBViewDataArray;
@property(nonatomic, strong)UIButton *EBsaveButton;//保存按钮
@property(nonatomic, strong)UITableView *EBmainTable;//列表
@end

@implementation EBProductInformationAddViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(EBkeyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];
    self.title = @"添加";
    [self EBsetContentView];
}
- (void)EBkeyboardWillHide:(NSNotification *)EBnote{
//    self.isDetails = NO;
    //取得键盘弹出时间
    CGFloat EBduration = [EBnote.userInfo[UIKeyboardAnimationDurationUserInfoKey] floatValue];
    //取得键盘高度
       [UIView animateWithDuration:EBduration delay:0 options:7 << 16 animations:^{
           self.view.transform = CGAffineTransformIdentity;
           self.view.frame = self.view.bounds;
       } completion:nil];
}
#pragma mark - actions
- (void)EB_setupNavigationItems{
    [super EB_setupNavigationItems];
    UIBarButtonItem *EBsaveButton = [[UIBarButtonItem alloc] initWithCustomView:self.EBsaveButton];
    self.navigationItem.rightBarButtonItem = EBsaveButton;
}
- (void)EBsetContentView{
    EBProductInformationAddModel *EBcategoryViewModel = [[EBProductInformationAddModel alloc] init];
    EBcategoryViewModel.EBTitle = @"类别:";
    EBcategoryViewModel.EBDefault = @"请输入类别";
    [self.EBViewDataArray addObject:EBcategoryViewModel];
    
    EBProductInformationAddModel *EBdeliveryaddressViewModel = [[EBProductInformationAddModel alloc] init];
    EBdeliveryaddressViewModel.EBTitle = @"交货地址:";
    EBdeliveryaddressViewModel.EBDefault = @"请输入交货地址";
    [self.EBViewDataArray addObject:EBdeliveryaddressViewModel];
    
    EBProductInformationAddModel *EBpurchasetimeViewModel = [[EBProductInformationAddModel alloc] init];
    EBpurchasetimeViewModel.EBTitle = @"购买时间:";
    EBpurchasetimeViewModel.EBDefault = @"请输入购买时间";
    [self.EBViewDataArray addObject:EBpurchasetimeViewModel];
    
    [self.EBmainTable reloadData];
}
- (void)EBsaveAction:(UIButton *)sender{
    for (int i = 0; i < self.EBViewDataArray.count; i++) {
        EBProductInformationAddModel *EBviewModel = self.EBViewDataArray[i];
        NSString *EBcontentString = [EBHBTool EBremoveSpaceAndNewline:EBviewModel.EBContent];
        if (!EBcontentString.length) {
            if (i == 0) {
                [MBProgressHUD EBshowReminderText:@"请输入类别"];
                return;
            }else if (i == 1){
                [MBProgressHUD EBshowReminderText:@"请输入数量"];
                return;
            }else if (i == 2){
                [MBProgressHUD EBshowReminderText:@"请输入购买时间"];
                return;
            }
        }
    }
    EBProductInformationAddModel *EBcategoryviewModel = self.EBViewDataArray[0];
    self.EBModel.EBcategory = EBcategoryviewModel .EBContent;
    EBProductInformationAddModel *EBdeliveryaddressviewModel = self.EBViewDataArray[1];
    self.EBModel.EBdeliveryaddress = EBdeliveryaddressviewModel.EBContent;
    EBProductInformationAddModel *EBpurchasetimeviewModel = self.EBViewDataArray[2];
    self.EBModel.EBpurchasetime = EBpurchasetimeviewModel.EBContent;

    NSMutableDictionary *EBjsonDictionary = [[NSMutableDictionary alloc] initWithDictionary:(NSDictionary *)[self.EBModel yy_modelToJSONObject]];
    AVUser *EBauthor = [AVUser currentUser];
    AVObject *EBdiary = [AVObject objectWithClassName:@"EBProductInformation"];
    for (NSString *EBkey in EBjsonDictionary.allKeys) {
        [EBdiary setObject:[EBjsonDictionary objectForKey:EBkey]  forKey:EBkey];
    }
    [EBdiary setObject:EBauthor forKey:@"author"];
    [EBdiary saveInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            //创建成功后的动作
            [MBProgressHUD EBshowReminderText:NSLocalizedString(@"保存成功", nil)];
            [self.EBsuperVC.EBmainTable.mj_header beginRefreshing];
            [self.navigationController popToRootViewControllerAnimated:YES];
        } else if (error){
            //发生错误后的动作
            [MBProgressHUD EBshowReminderText:@"请稍后重试"];
        } else {
            [MBProgressHUD EBshowReminderText:@"请稍后重试"];
        }
    }];
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.EBViewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    EBProductInformationAddModel *EBViewModel = self.EBViewDataArray[indexPath.row];
    NSString *EBKMyCellID = @"EBProductInformationAddTableViewCell";
    NSString *EBcellID = [NSString stringWithFormat:@"%@%zd",EBKMyCellID, indexPath.row];
    EBProductInformationAddTableViewCell *EBcell = [tableView dequeueReusableCellWithIdentifier:EBcellID];
    if (!EBcell) {
        EBcell = [[EBProductInformationAddTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:EBcellID];
    }
    EBcell.EBViewModel = EBViewModel;
    EBcell.selectionStyle = UITableViewCellSelectionStyleNone;
    __weak typeof(self) weakSelf = self;
    EBcell.EBeditBlock = ^(EBProductInformationAddTableViewCell * _Nonnull cell) {
        if ([EBViewModel.EBTitle hasPrefix:@"购买时间"]) {
        if (EBcell.EBcontentHeight > EBViewModel.EBEditHeight) {
        [UIView animateWithDuration:0.2 animations:^{
            CGRect EBframe = self.view.frame;
            EBframe.origin.y = EBframe.origin.y -  22;
            self.view.frame = EBframe;
        }];
        }
        }
        EBViewModel.EBEditHeight = cell.EBcontentHeight;
        [weakSelf.EBmainTable beginUpdates];
        [weakSelf.EBmainTable endUpdates];
    };
    return EBcell;
}
#pragma mark - UIScrollViewDelegate
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    [self.view endEditing:YES];
}
#pragma mark - 关闭键盘
- (void)EBcloseKeyboard:(UITapGestureRecognizer *)recognizer{
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (EBProductInformationModel *)EBModel{
    if (!_EBModel) {
        _EBModel = [[EBProductInformationModel alloc] init];
    }
    return _EBModel;
}
- (NSMutableArray *)EBViewDataArray{
    if (!_EBViewDataArray) {
        _EBViewDataArray = [[NSMutableArray alloc] init];
    }
    return _EBViewDataArray;
}
- (UIButton *)EBsaveButton{
    if (!_EBsaveButton) {
        _EBsaveButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
        [_EBsaveButton setTitle:@"保存" forState:UIControlStateNormal];
        [_EBsaveButton addTarget:self action:@selector(EBsaveAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _EBsaveButton;
}
- (UITableView *)EBmainTable{
    if (!_EBmainTable) {
        _EBmainTable = [[UITableView alloc] init];
        _EBmainTable.rowHeight = UITableViewAutomaticDimension;
        _EBmainTable.estimatedRowHeight = 48.0f;
        _EBmainTable.dataSource = self;
        _EBmainTable.delegate = self;
        _EBmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        UITapGestureRecognizer *EBsingleTapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(EBcloseKeyboard:)];
        EBsingleTapGesture.numberOfTapsRequired = 1;
        EBsingleTapGesture.cancelsTouchesInView = NO;
        [_EBmainTable addGestureRecognizer:EBsingleTapGesture];
        [self.view addGestureRecognizer:EBsingleTapGesture];
        UIPanGestureRecognizer *EBpanGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(EBcloseKeyboard:)];
        [self.view addGestureRecognizer:EBpanGesture];
        [self.view addSubview:_EBmainTable];
        [_EBmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_topLayoutGuideBottom);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view);
        }];
    }
    return _EBmainTable;
}


@end
