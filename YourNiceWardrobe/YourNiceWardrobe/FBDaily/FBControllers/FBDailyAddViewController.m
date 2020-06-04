//
//  FBDailyAddViewController.m
//  YourNiceWardrobe
//
//  Created by 褚红彪 on 2020/5/4.
//  Copyright © 2020 hb. All rights reserved.
//

#import "FBDailyAddViewController.h"
#import "FBDailyViewController.h"
#import "FBDailyAddVTableViewCell.h"
#import "FBDailyAddModel.h"
#import "FBDailyModel.h"

@interface FBDailyAddViewController ()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic, strong)FBDailyModel *FBModel;
@property(nonatomic, strong)NSMutableArray *FBViewDataArray;
@property(nonatomic, strong)UIButton *FBsaveButton;//保存按钮
@property(nonatomic, strong)UITableView *FBmainTable;//列表
@end

@implementation FBDailyAddViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(FBkeyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];
    self.title = @"添加";
    [self FBsetContentView];
}
- (void)FBkeyboardWillHide:(NSNotification *)FBnote{
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
    FBDailyAddModel *FBViewModel = [[FBDailyAddModel alloc] init];
    FBViewModel.FBDefault = @"请输入日常穿衣日记";
    [self.FBViewDataArray addObject:FBViewModel];
    [self.FBmainTable reloadData];
}
- (void)FBsaveAction:(UIButton *)sender{
    for (int i = 0; i < self.FBViewDataArray.count; i++) {
        FBDailyAddModel *FBviewModel = self.FBViewDataArray[i];
        NSString *FBcontentString = [FBHBTool FBremoveSpaceAndNewline:FBviewModel.FBContent];
        if (!FBcontentString.length) {
            if (i == 0) {
                [MBProgressHUD FBshowReminderText:@"请输入日常穿衣日记"];
                return;
            }
        }
    }
    FBDailyAddModel *FBviewModel = self.FBViewDataArray[0];
    self.FBModel.FBContent = FBviewModel.FBContent;
    NSMutableDictionary *FBjsonDictionary = [[NSMutableDictionary alloc] initWithDictionary:(NSDictionary *)[self.FBModel yy_modelToJSONObject]];
    [FBjsonDictionary setObject:[[NSDate alloc] init] forKey:@"FBDate"];
    AVUser *FBauthor = [AVUser currentUser];
    AVObject *FBdiary = [AVObject objectWithClassName:@"FBDaily"];
    for (NSString *FBkey in FBjsonDictionary.allKeys) {
        [FBdiary setObject:[FBjsonDictionary objectForKey:FBkey]  forKey:FBkey];
    }
    [FBdiary setObject:FBauthor forKey:@"author"];
    [FBdiary saveInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            //创建成功后的动作
            [MBProgressHUD FBshowReminderText:@"保存成功"];
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
    FBDailyAddModel *FBViewModel = self.FBViewDataArray[indexPath.row];
    NSString *FBKMyCellID = @"FBDailyAddVTableViewCell";
    NSString *FBcellID = [NSString stringWithFormat:@"%@%zd",FBKMyCellID, indexPath.row];
    FBDailyAddVTableViewCell *FBcell = [tableView dequeueReusableCellWithIdentifier:FBcellID];
    if (!FBcell) {
        FBcell = [[FBDailyAddVTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:FBcellID];
    }
    FBcell.FBViewModel = FBViewModel;
    FBcell.selectionStyle = UITableViewCellSelectionStyleNone;
    __weak typeof(self) weakSelf = self;
    FBcell.FBeditBlock = ^(FBDailyAddVTableViewCell * _Nonnull cell) {
        if (FBcell.FBcontentHeight > FBViewModel.FBEditHeight) {
        [UIView animateWithDuration:0.2 animations:^{
            CGRect FBframe = self.view.frame;
            FBframe.origin.y = FBframe.origin.y -  22;
            self.view.frame = FBframe;
        }];
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
- (FBDailyModel *)FBModel{
    if (!_FBModel) {
        _FBModel = [[FBDailyModel alloc] init];
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
            make.top.equalTo(self.view);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view);
        }];
        
    }
    return _FBmainTable;
}
@end
