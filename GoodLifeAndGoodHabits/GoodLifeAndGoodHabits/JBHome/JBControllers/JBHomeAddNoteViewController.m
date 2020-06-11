//
//  JBHomeAddNoteViewController.m
//  GoodLifeAndGoodHabits
//
//  Created by user on 2020/6/11.
//  Copyright © 2020 user. All rights reserved.
//

#import "JBHomeAddNoteViewController.h"
#import "JBHomeViewController.h"
#import "JBHomeAddNoteTableViewCell.h"
#import "JBLifeModel.h"
#import "JBLifeViewModel.h"

@interface JBHomeAddNoteViewController ()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic, strong)JBLifeModel *JBlifemodel;
@property(nonatomic, strong)NSMutableArray *JBViewDataArray;
@property(nonatomic, strong)UIButton *JBsaveButton;//保存按钮
@property(nonatomic, strong)UITableView *JBmainTable;//列表

@end

@implementation JBHomeAddNoteViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(JBkeyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];
    self.title = NSLocalizedString(@"添加笔记", nil);
    [self JBsetContentView];
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
#pragma mark - actions
- (void)JB_setupNavigationItems{
    [super JB_setupNavigationItems];
    UIBarButtonItem *JBsaveButton = [[UIBarButtonItem alloc] initWithCustomView:self.JBsaveButton];
    self.navigationItem.rightBarButtonItem = JBsaveButton;
}
- (void)JBsetContentView{
    JBLifeViewModel *JBlifeviewmodel = [[JBLifeViewModel alloc] init];
    JBlifeviewmodel.JBDefault = NSLocalizedString(@"请输入内容", nil);
    [self.JBViewDataArray addObject:JBlifeviewmodel];
    [self.JBmainTable reloadData];
}
- (void)JBsaveAction:(UIButton *)sender{
    for (int i = 0; i < self.JBViewDataArray.count; i++) {
        JBLifeViewModel *JBviewModel = self.JBViewDataArray[i];
        NSString *JBtitleString = [JBHBTool JBremoveSpaceAndNewline:JBviewModel.JBTitle];
        NSString *JBcontentString = [JBHBTool JBremoveSpaceAndNewline:JBviewModel.JBContent];
        if (!JBtitleString.length) {
            if (i == 0) {
                [MBProgressHUD JBshowReminderText:NSLocalizedString(@"请输入标题", nil)];
                return;
            }
        }
        if (!JBcontentString.length) {
            if (i == 0) {
                [MBProgressHUD JBshowReminderText:NSLocalizedString(@"请输入内容", nil)];
                return;
            }
        }
    }
    JBLifeViewModel *JBviewModel = self.JBViewDataArray[0];
    self.JBlifemodel.JBTitle = JBviewModel.JBTitle;
    self.JBlifemodel.JBContent = JBviewModel.JBContent;
    NSMutableDictionary *JBjsonDictionary = [[NSMutableDictionary alloc] initWithDictionary:(NSDictionary *)[self.JBlifemodel yy_modelToJSONObject]];
    AVUser *JBauthor = [AVUser currentUser];
    AVObject *JBdiary = [AVObject objectWithClassName:@"JBGoodLife"];
    for (NSString *JBkey in JBjsonDictionary.allKeys) {
        [JBdiary setObject:[JBjsonDictionary objectForKey:JBkey]  forKey:JBkey];
    }
    [JBdiary setObject:JBauthor forKey:@"author"];
    [JBdiary saveInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            //创建成功后的动作
            [MBProgressHUD JBshowReminderText:NSLocalizedString(@"保存成功", nil)];
            [self.JBsuperVC.JBmainTable.mj_header beginRefreshing];
            [self.navigationController popToRootViewControllerAnimated:YES];
        } else if (error){
            //发生错误后的动作
            [MBProgressHUD JBshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        } else {
            [MBProgressHUD JBshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        }
    }];
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.JBViewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    JBLifeViewModel *JBlifeviewmodel = self.JBViewDataArray[indexPath.row];
    NSString *JBKMyCellID = @"JBHomeAddNoteTableViewCell";
    NSString *JBcellID = [NSString stringWithFormat:@"%@%zd",JBKMyCellID, indexPath.row];
    JBHomeAddNoteTableViewCell *JBcell = [tableView dequeueReusableCellWithIdentifier:JBcellID];
    if (!JBcell) {
        JBcell = [[JBHomeAddNoteTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:JBcellID];
    }
    JBcell.JBlifeviewmodel = JBlifeviewmodel;
    JBcell.selectionStyle = UITableViewCellSelectionStyleNone;
    __weak typeof(self) weakSelf = self;
    JBcell.JBeditBlock = ^(JBHomeAddNoteTableViewCell * _Nonnull cell) {
        if (JBcell.JBcontentHeight > JBlifeviewmodel.JBEditHeight) {
        [UIView animateWithDuration:0.2 animations:^{
            CGRect JBframe = self.view.frame;
            JBframe.origin.y = JBframe.origin.y -  22;
            self.view.frame = JBframe;
        }];
        }
        JBlifeviewmodel.JBEditHeight = cell.JBcontentHeight;
        [weakSelf.JBmainTable beginUpdates];
        [weakSelf.JBmainTable endUpdates];
    };
    return JBcell;
}
#pragma mark - UIScrollViewDelegate
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    [self.view endEditing:YES];
}
#pragma mark - 关闭键盘
- (void)JBcloseKeyboard:(UITapGestureRecognizer *)recognizer{
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (JBLifeModel *)JBlifemodel{
    if (!_JBlifemodel) {
        _JBlifemodel = [[JBLifeModel alloc] init];
    }
    return _JBlifemodel;
}
- (NSMutableArray *)JBViewDataArray{
    if (!_JBViewDataArray) {
        _JBViewDataArray = [[NSMutableArray alloc] init];
    }
    return _JBViewDataArray;
}
- (UIButton *)JBsaveButton{
    if (!_JBsaveButton) {
        _JBsaveButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
        [_JBsaveButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [_JBsaveButton setTitle:NSLocalizedString(@"保存", nil) forState:UIControlStateNormal];
        [_JBsaveButton addTarget:self action:@selector(JBsaveAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _JBsaveButton;
}
- (UITableView *)JBmainTable{
    if (!_JBmainTable) {
        _JBmainTable = [[UITableView alloc] init];
        _JBmainTable.rowHeight = UITableViewAutomaticDimension;
        _JBmainTable.estimatedRowHeight = 48.0f;
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
        [self.view addSubview:_JBmainTable];
        [_JBmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.view);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view);
        }];
        
    }
    return _JBmainTable;
}
@end
