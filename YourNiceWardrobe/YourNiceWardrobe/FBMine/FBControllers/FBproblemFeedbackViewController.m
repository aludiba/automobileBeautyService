//
//  FBproblemFeedbackViewController.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/7.
//  Copyright © 2020 hb. FBl rights reserved.
//

#import "FBproblemFeedbackViewController.h"
#import "FBproblemFeedbackModel.h"
#import "FBDressUpAddModel.h"
#import "FBproblemFeedbackTableViewCell.h"
@interface FBproblemFeedbackViewController ()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic, strong)FBproblemFeedbackModel *FBproblemfeedbackmodel;
@property(nonatomic, strong)UITableView *FBmainTable;//列表
@property(nonatomic, strong)UIButton *FBsaveButton;//保存按钮
@property(nonatomic, strong)NSMutableArray *FBviewDataArray;//页面数据
@end

@implementation FBproblemFeedbackViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additionFB setup after loading the view.
    self.title = NSLocalizedString(@"问题反馈", nil);
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(FBkeyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];
    [self FBSetContentView];
}
- (void)FBSetContentView{
    FBDressUpAddModel *FBFeedbackViewModel = [[FBDressUpAddModel alloc] init];
    FBFeedbackViewModel.FBTitle = NSLocalizedString(@"反馈内容", nil);
    FBFeedbackViewModel.FBDefault = NSLocalizedString(@"请输入反馈内容", nil);
    [self.FBviewDataArray addObject:FBFeedbackViewModel];
    
    [self.FBmainTable reloadData];
}
- (void)FBkeyboardWillHide:(NSNotification *)FBnote
{
//    self.isDetails = NO;
    //取得键盘弹出时间
    CGFloat FBduration = [FBnote.userInfo[UIKeyboardAnimationDurationUserInfoKey] floatValue];
    //取得键盘高度
       [UIView animateWithDuration:FBduration delay:0 options:7 << 16 animations:^{
           self.view.transform = CGAffineTransformIdentity;
           self.view.frame = self.view.bounds;
       } completion:nil];
}
- (void)FBsaveAction:(UIButton *)FBsender{
    for (int i = 0; i < self.FBviewDataArray.count; i++) {
        FBDressUpAddModel *FBviewModel = self.FBviewDataArray[i];
        NSString *FBcontentString = [FBHBTool FBremoveSpaceAndNewline:FBviewModel.FBContent];
        if (!FBcontentString.length) {
            if (i == 0) {
                [MBProgressHUD FBshowReminderText:NSLocalizedString(@"请输入反馈内容", nil)];
                return;
            }
        }
    }
    FBDressUpAddModel *FBfeedbackviewModel = self.FBviewDataArray[0];
    self.FBproblemfeedbackmodel.FBcontent = FBfeedbackviewModel.FBContent;
    
    NSMutableDictionary *FBjsonDictionary = [[NSMutableDictionary alloc] initWithDictionary:(NSDictionary *)[self.FBproblemfeedbackmodel yy_modelToJSONObject]];
    AVUser *FBauthor = [AVUser currentUser];
    AVObject *FBdiary = [AVObject objectWithClassName:@"FBproblemFeedback"];
        for (NSString *key in FBjsonDictionary.allKeys) {
            [FBdiary setObject:[FBjsonDictionary objectForKey:key]  forKey:key];
        }
        [FBdiary setObject:FBauthor forKey:@"author"];
        [FBdiary saveInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
            if (isSuccessful) {
                //创建成功后的动作
                [MBProgressHUD FBshowReminderText:NSLocalizedString(@"发送成功", nil)];
                [self.navigationController popViewControllerAnimated:YES];
            } else if (error){
                //发生错误后的动作
                [MBProgressHUD FBshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            } else {
                [MBProgressHUD FBshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.FBviewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    FBDressUpAddModel *FBViewModel = self.FBviewDataArray[indexPath.row];
    NSString *KMyCellID = @"FBproblemFeedbackTableViewCell";
    NSString *cellID = [NSString stringWithFormat:@"%@%zd",KMyCellID, indexPath.row];
    FBproblemFeedbackTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (!cell) {
        cell = [[FBproblemFeedbackTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    cell.FBViewModel = FBViewModel;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    __weak typeof(self) weakSelf = self;
    cell.FBeditBlock = ^(FBproblemFeedbackTableViewCell * _Nonnull cell) {
        if (cell.FBcontentHeight > FBViewModel.FBEditHeight) {
        [UIView animateWithDuration:0.2 animations:^{
            CGRect frame = self.view.frame;
            frame.origin.y = frame.origin.y - 22;
            self.view.frame = frame;
        }];
        }
        FBViewModel.FBEditHeight = cell.FBcontentHeight;
        [weakSelf.FBmainTable beginUpdates];
        [weakSelf.FBmainTable endUpdates];
    };
    return cell;
}
#pragma mark - UIScrollViewDelegate
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    [self.view endEditing:YES];
}
#pragma mark - 关闭键盘
- (void)FBcloseKeyboard:(UITapGestureRecognizer *)recognizer {
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (FBproblemFeedbackModel *)FBproblemfeedbackmodel{
    if (!_FBproblemfeedbackmodel) {
        _FBproblemfeedbackmodel = [[FBproblemFeedbackModel alloc] init];
    }
    return _FBproblemfeedbackmodel;
}
- (NSMutableArray *)FBviewDataArray{
    if (!_FBviewDataArray) {
        _FBviewDataArray = [[NSMutableArray alloc] init];
    }
    return _FBviewDataArray;
}
- (UITableView *)FBmainTable{
    if (!_FBmainTable) {
        _FBmainTable = [[UITableView alloc] init];
        _FBmainTable.rowHeight = UITableViewAutomaticDimension;
        _FBmainTable.estimatedRowHeight = 48.0f;
        _FBmainTable.dataSource = self;
        _FBmainTable.delegate = self;
        _FBmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        UITapGestureRecognizer *singleTapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(FBcloseKeyboard:)];
        singleTapGesture.numberOfTapsRequired = 1;
        singleTapGesture.cancelsTouchesInView = NO;
        [_FBmainTable addGestureRecognizer:singleTapGesture];
        [self.view addGestureRecognizer:singleTapGesture];
        UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(FBcloseKeyboard:)];
        [self.view addGestureRecognizer:panGesture];
        [self.view addSubview:_FBmainTable];
        [_FBmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_topLayoutGuideBottom);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.mas_bottomLayoutGuideTop).offset(-74);
        }];
        [self.view addSubview:self.FBsaveButton];
        [self.FBsaveButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.view).offset(16);
            make.trailing.equalTo(self.view).offset(-16);
            make.bottom.equalTo(self.mas_bottomLayoutGuideTop).offset(-30);
            make.height.mas_equalTo(44);
        }];
    }
    return _FBmainTable;
}
- (UIButton *)FBsaveButton{
    if (!_FBsaveButton) {
        _FBsaveButton = [[UIButton alloc] init];
        _FBsaveButton.backgroundColor = [UIColor orangeColor];
        _FBsaveButton.layer.cornerRadius = 8.0f;
        _FBsaveButton.layer.masksToBounds = YES;
        [_FBsaveButton setTitle:NSLocalizedString(@"发送", nil) forState:UIControlStateNormal];
        [_FBsaveButton addTarget:self action:@selector(FBsaveAction:) forControlEvents:UIControlEventTouchUpInside];
        [_FBsaveButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_FBsaveButton.titleLabel setFont:[UIFont systemFontOfSize:17]];
    }
    return _FBsaveButton;
}
@end
