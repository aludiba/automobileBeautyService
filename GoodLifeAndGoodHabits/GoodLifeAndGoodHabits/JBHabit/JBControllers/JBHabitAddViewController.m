//
//  JBHabitAddViewController.m
//  GoodLifeAndGoodHabits
//
//  Created by user on 2020/6/12.
//  Copyright © 2020 user. All rights reserved.
//

#import "JBHabitAddViewController.h"
#import "JBHabitChildViewController.h"
#import "JBHabitViewController.h"
#import "CDZPicker.h"
#import "JBHabitModel.h"
#import "JBHabitViewModel.h"
#import "JBHabitAddSelectTableViewCell.h"
#import "JBHabitAddEditorTableViewCell.h"

@interface JBHabitAddViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)JBHabitModel *JBhabitmodel;
@property(nonatomic, strong)NSMutableArray *JBViewDataArray;
@property(nonatomic, strong)UIButton *JBsaveButton;//保存按钮
@property(nonatomic, strong)UITableView *JBmainTable;
@property(nonatomic, strong)CDZPickerBuilder *JBPickerBuilder;
@property(nonatomic, strong)NSArray *JBHabitTypesArray;
@property(nonatomic, copy)NSString *JBselectContentString;
@end

@implementation JBHabitAddViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = NSLocalizedString(@"添加习惯", nil);
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(JBkeyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];
    [self JBsetContentView];
}
#pragma mark - actions
- (void)JB_setupNavigationItems{
    [super JB_setupNavigationItems];
    UIBarButtonItem *JBsaveButton = [[UIBarButtonItem alloc] initWithCustomView:self.JBsaveButton];
    self.navigationItem.rightBarButtonItem = JBsaveButton;
}
- (void)JBsetContentView{
    self.view.backgroundColor = [UIColor clearColor];
    JBHabitViewModel *JBselectViewModel = [[JBHabitViewModel alloc] init];
    JBselectViewModel.JBhabitviewtype = JBHabitViewTypeSelect;
    JBselectViewModel.JBHabitType = self.JBHabitType;
    if (self.JBHabitType == JBHabitChildTypeMotion){
        JBselectViewModel.JBContent = NSLocalizedString(@"运动", nil);
    }else if (self.JBHabitType == JBHabitChildTypeReadBook){
        JBselectViewModel.JBContent = NSLocalizedString(@"阅读", nil);
    }else if (self.JBHabitType == JBHabitChildTypeMusicalInstruments){
        JBselectViewModel.JBContent = NSLocalizedString(@"乐器", nil);
    }else if (self.JBHabitType == JBHabitChildTypeOthers){
        JBselectViewModel.JBContent = NSLocalizedString(@"其它", nil);
    }
    JBselectViewModel.JBDefault = NSLocalizedString(@"请选择计划", nil);
    [self.JBViewDataArray addObject:JBselectViewModel];
    
    JBHabitViewModel *JBplanTimeViewModel = [[JBHabitViewModel alloc] init];
    JBplanTimeViewModel.JBhabitviewtype = JBHabitViewTypeEditNum;
    JBplanTimeViewModel.JBHabitType = self.JBHabitType;
    JBplanTimeViewModel.JBDefault = NSLocalizedString(@"请输入计划时长", nil);
    [self.JBViewDataArray addObject:JBplanTimeViewModel];
    
    JBHabitViewModel *JBplanCommentViewModel = [[JBHabitViewModel alloc] init];
    JBplanCommentViewModel.JBhabitviewtype = JBHabitViewTypeEditString;
    JBplanCommentViewModel.JBHabitType = self.JBHabitType;
    JBplanCommentViewModel.JBDefault = NSLocalizedString(@"请输入计划内容", nil);
    [self.JBViewDataArray addObject:JBplanCommentViewModel];
    
    [self.JBmainTable reloadData];
}
- (void)JBkeyboardWillHide:(NSNotification *)JBnote{
    //取得键盘弹出时间
    CGFloat JBduration = [JBnote.userInfo[UIKeyboardAnimationDurationUserInfoKey] floatValue];
    //取得键盘高度
       [UIView animateWithDuration:JBduration delay:0 options:7 << 16 animations:^{
           self.view.transform = CGAffineTransformIdentity;
           self.view.frame = self.view.bounds;
       } completion:nil];
}
- (void)JBsaveAction:(UIButton *)JBsender{
    for (int i = 0; i < self.JBViewDataArray.count; i++) {
        JBHabitViewModel *JBViewModel = self.JBViewDataArray[i];
        NSString *JBcontentString = JBViewModel.JBContent;
        if (!JBcontentString.length) {
            if (i == 0) {
                [MBProgressHUD JBshowReminderText:NSLocalizedString(@"请选择计划类型", nil)];
                return;
            }else if (i == 1){
                [MBProgressHUD JBshowReminderText:NSLocalizedString(@"请输入计划时长", nil)];
                return;
            }else if(i == 2){
                [MBProgressHUD JBshowReminderText:NSLocalizedString(@"请输入计划内容", nil)];
                return;
            }
        }else{
            if (i == 0) {
                self.JBhabitmodel.JBType = self.JBHabitType;
            }else if (i == 1){
                self.JBhabitmodel.JBPlanTime = JBcontentString;
            }else if(i == 2){
                self.JBhabitmodel.JBComment = JBcontentString;
            }
        }
    }
    NSMutableDictionary *JBjsonDictionary = [[NSMutableDictionary alloc] initWithDictionary:(NSDictionary *)[self.JBhabitmodel yy_modelToJSONObject]];
    AVUser *JBauthor = [AVUser currentUser];
    NSString *JBHabitTypeString = @"JBAllHabits";
    AVObject *JBdiary = [AVObject objectWithClassName:JBHabitTypeString];
    for (NSString *JBkey in JBjsonDictionary.allKeys) {
        [JBdiary setObject:[JBjsonDictionary objectForKey:JBkey]  forKey:JBkey];
    }
    [JBdiary setObject:JBauthor forKey:@"author"];
    [JBdiary saveInBackgroundWithBlock:^(BOOL JBisSuccessful, NSError *JBerror) {
        if (JBisSuccessful) {
            //创建成功后的动作
            [MBProgressHUD JBshowReminderText:NSLocalizedString(@"保存成功", nil)];
            [self.JBsuperVC.JBChildAllVC.JBMainTable.mj_header beginRefreshing];
            if (self.JBHabitType == JBHabitChildTypeMotion) {
                [self.JBsuperVC.JBChildMotionVC.JBMainTable.mj_header beginRefreshing];
            }else if (self.JBHabitType == JBHabitChildTypeReadBook){
                [self.JBsuperVC.JBChildReadBookVC.JBMainTable.mj_header beginRefreshing];
            }else if (self.JBHabitType == JBHabitChildTypeMusicalInstruments){
                [self.JBsuperVC.JBChildMusicalInstrumentsVC.JBMainTable.mj_header beginRefreshing];
            }else if (self.JBHabitType == JBHabitChildTypeOthers){
                [self.JBsuperVC.JBChildOthersVC.JBMainTable.mj_header beginRefreshing];
            }
            [self.navigationController popToRootViewControllerAnimated:YES];
        } else if (JBerror){
            //发生错误后的动作
            [MBProgressHUD JBshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        } else {
            [MBProgressHUD JBshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        }
    }];
}
#pragma mark - UIScrollViewDelegate
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    [self.view endEditing:YES];
}
#pragma mark - 关闭键盘
- (void)JBcloseKeyboard:(UITapGestureRecognizer *)recognizer{
    [self.view endEditing:YES];
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.JBViewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    JBHabitViewModel *JBViewModel = self.JBViewDataArray[indexPath.row];
    if (JBViewModel.JBhabitviewtype == JBHabitViewTypeSelect) {
        JBHabitAddSelectTableViewCell *JBCell = [tableView dequeueReusableCellWithIdentifier:@"JBHabitAddSelectTableViewCell" forIndexPath:indexPath];
        JBCell.JBViewModel = JBViewModel;
        JBCell.selectionStyle = UITableViewCellSelectionStyleNone;
        return JBCell;
    }else{
        NSString *JBKMyCellID = @"JBHabitAddEditorTableViewCell";
        NSString *JBcellID = [NSString stringWithFormat:@"%@%zd",JBKMyCellID, indexPath.row];
        JBHabitAddEditorTableViewCell *JBcell = [tableView dequeueReusableCellWithIdentifier:JBcellID];
        if (!JBcell) {
            JBcell = [[JBHabitAddEditorTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:JBcellID];
        }
        JBcell.JBViewModel = JBViewModel;
        JBcell.selectionStyle = UITableViewCellSelectionStyleNone;
        __weak typeof(self) weakSelf = self;
        JBcell.JBeditBlock = ^(JBHabitAddEditorTableViewCell * _Nonnull cell) {
            if (cell.JBcontentHeight > JBViewModel.JBEditHeight) {
            [UIView animateWithDuration:0.2 animations:^{
                CGRect JBframe = self.view.frame;
                JBframe.origin.y = JBframe.origin.y -  47;
                self.view.frame = JBframe;
            }];
            }
            JBViewModel.JBEditHeight = cell.JBcontentHeight;
            [weakSelf.JBmainTable beginUpdates];
            [weakSelf.JBmainTable endUpdates];
        };
        return JBcell;
    }
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    JBHabitViewModel *JBViewModel = self.JBViewDataArray[indexPath.row];
    if ((JBViewModel.JBhabitviewtype == JBHabitViewTypeSelect) &&(JBViewModel.JBHabitType == JBHabitChildTypeAll)) {
        __weak typeof(self) weakSelf = self;
        [CDZPicker showSinglePickerInView:self.view withBuilder:_JBPickerBuilder strings:self.JBHabitTypesArray confirm:^(NSArray<NSString *> * _Nonnull strings, NSArray<NSNumber *> * _Nonnull indexs) {
            __strong typeof(weakSelf) strongSelf = weakSelf;
            strongSelf.JBselectContentString = strings.firstObject;
            JBViewModel.JBContent = strongSelf.JBselectContentString;
            for (int i = 0; i < strongSelf.JBHabitTypesArray.count; i++) {
                NSString *JBHabitString = self.JBHabitTypesArray[i];
                if ([JBHabitString isEqualToString:JBViewModel.JBContent]) {
                    strongSelf.JBHabitType = i + 1;
                }
            }
            [tableView reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
        }cancel:^{
            
        }];
    }
}
#pragma mark - 属性懒加载
- (JBHabitModel *)JBhabitmodel{
    if (!_JBhabitmodel) {
        _JBhabitmodel = [[JBHabitModel alloc] init];
    }
    return _JBhabitmodel;
}
- (NSMutableArray *)JBViewDataArray{
    if (!_JBViewDataArray) {
        _JBViewDataArray = [[NSMutableArray alloc] init];
    }
    return _JBViewDataArray;
}
- (NSArray *)JBHabitTypesArray{
    if (!_JBHabitTypesArray) {
        _JBHabitTypesArray = [[NSArray alloc] initWithArray:@[NSLocalizedString(@"运动", nil),NSLocalizedString(@"阅读", nil),NSLocalizedString(@"乐器", nil),NSLocalizedString(@"其它", nil)]];
    }
    return _JBHabitTypesArray;
}
- (UIButton *)JBsaveButton{
    if (!_JBsaveButton) {
        _JBsaveButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
        [_JBsaveButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_JBsaveButton setTitle:NSLocalizedString(@"保存", nil) forState:UIControlStateNormal];
        [_JBsaveButton addTarget:self action:@selector(JBsaveAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _JBsaveButton;
}
- (UITableView *)JBmainTable{
    if (!_JBmainTable) {
        _JBmainTable = [[UITableView alloc] init];
        _JBmainTable.backgroundColor = [UIColor clearColor];
        _JBmainTable.rowHeight = UITableViewAutomaticDimension;
        _JBmainTable.estimatedRowHeight = 47.0f;
        _JBmainTable.dataSource = self;
        _JBmainTable.delegate = self;
        _JBmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        UITapGestureRecognizer *JBsingleTapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(JBcloseKeyboard:)];
        JBsingleTapGesture.numberOfTapsRequired = 1;
        JBsingleTapGesture.cancelsTouchesInView = NO;
        [_JBmainTable addGestureRecognizer:JBsingleTapGesture];
        [self.view addGestureRecognizer:JBsingleTapGesture];
        UIPanGestureRecognizer *JBpanGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(JBcloseKeyboard:)];
        [self.view addGestureRecognizer:JBpanGesture];
        [_JBmainTable registerClass:[JBHabitAddSelectTableViewCell class] forCellReuseIdentifier:@"JBHabitAddSelectTableViewCell"];
        [self.view addSubview:_JBmainTable];
        [_JBmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.view);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view).offset(-JBHeightTabBar);
        }];
        
    }
    return _JBmainTable;
}
- (CDZPickerBuilder *)JBPickerBuilder{
    if (!_JBPickerBuilder) {
        _JBPickerBuilder = [[CDZPickerBuilder alloc] init];
        _JBPickerBuilder.showMask = YES;
        _JBPickerBuilder.cancelTextColor = UIColor.redColor;
    }
    return _JBPickerBuilder;
}
@end
