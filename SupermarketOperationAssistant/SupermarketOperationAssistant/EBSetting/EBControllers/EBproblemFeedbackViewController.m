//
//  EBproblemFeedbackViewController.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/7.
//  Copyright © 2020 hb. EBl rights reserved.
//

#import "EBproblemFeedbackViewController.h"
#import "EBproblemFeedbackModel.h"
#import "EBPurchaseStatusAddModel.h"
#import "EBproblemFeedbackTableViewCell.h"
@interface EBproblemFeedbackViewController ()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic, strong)EBproblemFeedbackModel *EBproblemfeedbackmodel;
@property(nonatomic, strong)UITableView *EBmainTable;//列表
@property(nonatomic, strong)UIButton *EBsaveButton;//保存按钮
@property(nonatomic, strong)NSMutableArray *EBviewDataArray;//页面数据
@end

@implementation EBproblemFeedbackViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additionEB setup after loading the view.
    self.title = NSLocalizedString(@"问题反馈", nil);
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(EBkeyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];
    [self EBSetContentView];
}
- (void)EBSetContentView{
    EBPurchaseStatusAddModel *EBFeedbackViewModel = [[EBPurchaseStatusAddModel alloc] init];
    EBFeedbackViewModel.EBTitle = NSLocalizedString(@"反馈内容", nil);
    EBFeedbackViewModel.EBDefault = NSLocalizedString(@"请输入反馈内容", nil);
    [self.EBviewDataArray addObject:EBFeedbackViewModel];
    
    [self.EBmainTable reloadData];
}
- (void)EBkeyboardWillHide:(NSNotification *)EBnote
{
//    self.isDetails = NO;
    //取得键盘弹出时间
    CGFloat EBduration = [EBnote.userInfo[UIKeyboardAnimationDurationUserInfoKey] floatValue];
    //取得键盘高度
       [UIView animateWithDuration:EBduration delay:0 options:7 << 16 animations:^{
           self.view.transform = CGAffineTransformIdentity;
           self.view.frame = self.view.bounds;
       } completion:nil];
}
- (void)EBsaveAction:(UIButton *)EBsender{
    for (int i = 0; i < self.EBviewDataArray.count; i++) {
        EBPurchaseStatusAddModel *EBviewModel = self.EBviewDataArray[i];
        NSString *EBcontentString = [EBHBTool EBremoveSpaceAndNewline:EBviewModel.EBContent];
        if (!EBcontentString.length) {
            if (i == 0) {
                [MBProgressHUD EBshowReminderText:NSLocalizedString(@"请输入反馈内容", nil)];
                return;
            }
        }
    }
    EBPurchaseStatusAddModel *EBfeedbackviewModel = self.EBviewDataArray[0];
    self.EBproblemfeedbackmodel.EBcontent = EBfeedbackviewModel.EBContent;
    
    NSMutableDictionary *EBjsonDictionary = [[NSMutableDictionary alloc] initWithDictionary:(NSDictionary *)[self.EBproblemfeedbackmodel yy_modelToJSONObject]];
    AVUser *EBauthor = [AVUser currentUser];
    AVObject *EBdiary = [AVObject objectWithClassName:@"EBproblemFeedback"];
        for (NSString *key in EBjsonDictionary.allKeys) {
            [EBdiary setObject:[EBjsonDictionary objectForKey:key]  forKey:key];
        }
        [EBdiary setObject:EBauthor forKey:@"author"];
        [EBdiary saveInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
            if (isSuccessful) {
                //创建成功后的动作
                [MBProgressHUD EBshowReminderText:NSLocalizedString(@"发送成功", nil)];
                [self.navigationController popViewControllerAnimated:YES];
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
    return self.EBviewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    EBPurchaseStatusAddModel *EBViewModel = self.EBviewDataArray[indexPath.row];
    NSString *KMyCellID = @"EBproblemFeedbackTableViewCell";
    NSString *cellID = [NSString stringWithFormat:@"%@%zd",KMyCellID, indexPath.row];
    EBproblemFeedbackTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (!cell) {
        cell = [[EBproblemFeedbackTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    cell.EBViewModel = EBViewModel;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    __weak typeof(self) weakSelf = self;
    cell.EBeditBlock = ^(EBproblemFeedbackTableViewCell * _Nonnull cell) {
        if (cell.EBcontentHeight > EBViewModel.EBEditHeight) {
        [UIView animateWithDuration:0.2 animations:^{
            CGRect frame = self.view.frame;
            frame.origin.y = frame.origin.y - 22;
            self.view.frame = frame;
        }];
        }
        EBViewModel.EBEditHeight = cell.EBcontentHeight;
        [weakSelf.EBmainTable beginUpdates];
        [weakSelf.EBmainTable endUpdates];
    };
    return cell;
}
#pragma mark - UIScrollViewDelegate
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    [self.view endEditing:YES];
}
#pragma mark - 关闭键盘
- (void)EBcloseKeyboard:(UIPanGestureRecognizer *)reCognizer {
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (EBproblemFeedbackModel *)EBproblemfeedbackmodel{
    if (!_EBproblemfeedbackmodel) {
        _EBproblemfeedbackmodel = [[EBproblemFeedbackModel alloc] init];
    }
    return _EBproblemfeedbackmodel;
}
- (NSMutableArray *)EBviewDataArray{
    if (!_EBviewDataArray) {
        _EBviewDataArray = [[NSMutableArray alloc] init];
    }
    return _EBviewDataArray;
}
- (UITableView *)EBmainTable{
    if (!_EBmainTable) {
        _EBmainTable = [[UITableView alloc] init];
        _EBmainTable.rowHeight = UITableViewAutomaticDimension;
        _EBmainTable.estimatedRowHeight = 48.0f;
        _EBmainTable.dataSource = self;
        _EBmainTable.delegate = self;
        _EBmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        UITapGestureRecognizer *singleTapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(EBcloseKeyboard:)];
        singleTapGesture.numberOfTapsRequired = 1;
        singleTapGesture.cancelsTouchesInView = NO;
        [_EBmainTable addGestureRecognizer:singleTapGesture];
        [self.view addGestureRecognizer:singleTapGesture];
        UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(EBcloseKeyboard:)];
        [self.view addGestureRecognizer:panGesture];
        [self.view addSubview:_EBmainTable];
        [_EBmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_topLayoutGuideBottom);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.mas_bottomLayoutGuideTop).offset(-74);
        }];
        [self.view addSubview:self.EBsaveButton];
        [self.EBsaveButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.view).offset(64);
            make.trailing.equalTo(self.view).offset(-64);
            make.bottom.equalTo(self.mas_bottomLayoutGuideTop).offset(-30);
            make.height.mas_equalTo(44);
        }];
    }
    return _EBmainTable;
}
- (UIButton *)EBsaveButton{
    if (!_EBsaveButton) {
        _EBsaveButton = [[UIButton alloc] init];
        _EBsaveButton.backgroundColor = [UIColor orangeColor];
        _EBsaveButton.layer.cornerRadius = 8.0f;
        _EBsaveButton.layer.masksToBounds = YES;
        [_EBsaveButton setTitle:NSLocalizedString(@"发送", nil) forState:UIControlStateNormal];
        [_EBsaveButton addTarget:self action:@selector(EBsaveAction:) forControlEvents:UIControlEventTouchUpInside];
        [_EBsaveButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_EBsaveButton.titleLabel setFont:[UIFont systemFontOfSize:17]];
    }
    return _EBsaveButton;
}
@end
