//
//  JBproblemFeedbackViewController.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/7.
//  Copyright © 2020 hb. All rights reserved.
//

#import "JBproblemFeedbackViewController.h"
#import "JBproblemFeedbackModel.h"
#import "JBCargoAddViewModel.h"
#import "JBproblemFeedbackTableViewCell.h"
@interface JBproblemFeedbackViewController ()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic, strong)JBproblemFeedbackModel *JBproblemfeedbackmodel;
@property(nonatomic, strong)UITableView *JBmainTable;//列表
@property(nonatomic, strong)UIButton *JBsaveButton;//保存按钮
@property(nonatomic, strong)NSMutableArray *JBviewDataArray;//页面数据
@end

@implementation JBproblemFeedbackViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"问题反馈", nil);
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];
    [self JBSetContentView];
}
- (void)JBSetContentView{
    JBCargoAddViewModel *JBFeedbackViewModel = [[JBCargoAddViewModel alloc] init];
    JBFeedbackViewModel.JBTitle = NSLocalizedString(@"反馈内容", nil);
    JBFeedbackViewModel.JBDefault = NSLocalizedString(@"请输入反馈内容", nil);
    [self.JBviewDataArray addObject:JBFeedbackViewModel];
    
    [self.JBmainTable reloadData];
}
- (void)keyboardWillHide:(NSNotification *)note
{
//    self.isDetails = NO;
    //取得键盘弹出时间
    CGFloat duration = [note.userInfo[UIKeyboardAnimationDurationUserInfoKey] floatValue];
    //取得键盘高度
       [UIView animateWithDuration:duration delay:0 options:7 << 16 animations:^{
           self.view.transform = CGAffineTransformIdentity;
           self.view.frame = self.view.bounds;
       } completion:nil];
}
- (void)saveAction:(UIButton *)sender{
    for (int i = 0; i < self.JBviewDataArray.count; i++) {
        JBCargoAddViewModel *JBviewModel = self.JBviewDataArray[i];
        NSString *JBcontentString = [JBHBTool JBremoveSpaceAndNewline:JBviewModel.JBContent];
        if (!JBcontentString.length) {
            if (i == 0) {
                [MBProgressHUD JBshowReminderText:NSLocalizedString(@"请输入反馈内容", nil)];
                return;
            }
        }
    }
    JBCargoAddViewModel *JBfeedbackviewModel = self.JBviewDataArray[0];
    self.JBproblemfeedbackmodel.JBcontent = JBfeedbackviewModel.JBContent;
    
    NSMutableDictionary *jsonDictionary = [[NSMutableDictionary alloc] initWithDictionary:(NSDictionary *)[self.JBproblemfeedbackmodel yy_modelToJSONObject]];
    AVUser *author = [AVUser currentUser];
    AVObject *diary = [AVObject objectWithClassName:@"JBJBproblemFeedback"];
        for (NSString *key in jsonDictionary.allKeys) {
            [diary setObject:[jsonDictionary objectForKey:key]  forKey:key];
        }
        [diary setObject:author forKey:@"author"];
        [diary saveInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
            if (isSuccessful) {
                //创建成功后的动作
                [MBProgressHUD JBshowReminderText:NSLocalizedString(@"发送成功", nil)];
                [self.navigationController popViewControllerAnimated:YES];
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
    return self.JBviewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    JBCargoAddViewModel *JBViewModel = self.JBviewDataArray[indexPath.row];
    NSString *KMyCellID = @"JBproblemFeedbackTableViewCell";
    NSString *cellID = [NSString stringWithFormat:@"%@%zd",KMyCellID, indexPath.row];
    JBproblemFeedbackTableViewCell *JBcell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (!JBcell) {
        JBcell = [[JBproblemFeedbackTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    JBcell.JBViewModel = JBViewModel;
    JBcell.selectionStyle = UITableViewCellSelectionStyleNone;
    __weak typeof(self) weakSelf = self;
    JBcell.JBeditBlock = ^(JBproblemFeedbackTableViewCell * _Nonnull cell) {
        if (JBcell.JBcontentHeight > JBViewModel.JBEditHeight) {
        [UIView animateWithDuration:0.2 animations:^{
            CGRect frame = self.view.frame;
            frame.origin.y = frame.origin.y - 22;
            self.view.frame = frame;
        }];
        }
        JBViewModel.JBEditHeight = cell.JBcontentHeight;
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
- (void)closeKeyboard:(UITapGestureRecognizer *)recognizer {
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (JBproblemFeedbackModel *)JBproblemfeedbackmodel{
    if (!_JBproblemfeedbackmodel) {
        _JBproblemfeedbackmodel = [[JBproblemFeedbackModel alloc] init];
    }
    return _JBproblemfeedbackmodel;
}
- (NSMutableArray *)JBviewDataArray{
    if (!_JBviewDataArray) {
        _JBviewDataArray = [[NSMutableArray alloc] init];
    }
    return _JBviewDataArray;
}
- (UITableView *)JBmainTable{
    if (!_JBmainTable) {
        _JBmainTable = [[UITableView alloc] init];
        _JBmainTable.rowHeight = UITableViewAutomaticDimension;
        _JBmainTable.estimatedRowHeight = 48.0f;
        _JBmainTable.dataSource = self;
        _JBmainTable.delegate = self;
        _JBmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        UITapGestureRecognizer *singleTapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(closeKeyboard:)];
        singleTapGesture.numberOfTapsRequired = 1;
        singleTapGesture.cancelsTouchesInView = NO;
        [_JBmainTable addGestureRecognizer:singleTapGesture];
        [self.view addGestureRecognizer:singleTapGesture];
        UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(closeKeyboard:)];
        [self.view addGestureRecognizer:panGesture];
        [self.view addSubview:self.JBsaveButton];
        [self.JBsaveButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.view).offset(16);
            make.trailing.equalTo(self.view).offset(-16);
            make.bottom.equalTo(self.mas_bottomLayoutGuideTop).offset(-5.5);
            make.height.mas_equalTo(44);
        }];
        [self.view addSubview:_JBmainTable];
        [_JBmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_topLayoutGuideBottom);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.mas_bottomLayoutGuideTop).offset(-55);
        }];
    }
    return _JBmainTable;
}
- (UIButton *)JBsaveButton{
    if (!_JBsaveButton) {
        _JBsaveButton = [[UIButton alloc] init];
        _JBsaveButton.backgroundColor = [UIColor greenColor];
        _JBsaveButton.layer.cornerRadius = 12.0f;
        _JBsaveButton.layer.masksToBounds = YES;
        [_JBsaveButton setTitle:NSLocalizedString(@"发送", nil) forState:UIControlStateNormal];
        [_JBsaveButton addTarget:self action:@selector(saveAction:) forControlEvents:UIControlEventTouchUpInside];
        [_JBsaveButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [_JBsaveButton.titleLabel setFont:[UIFont systemFontOfSize:15]];
    }
    return _JBsaveButton;
}
@end
