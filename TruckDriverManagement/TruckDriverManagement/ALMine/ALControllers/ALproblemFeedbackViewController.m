//
//  ALproblemFeedbackViewController.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/7.
//  Copyright © 2020 hb. All rights reserved.
//

#import "ALproblemFeedbackViewController.h"
#import "ALproblemFeedbackModel.h"
#import "ALCargoAddViewModel.h"
#import "ALproblemFeedbackTableViewCell.h"
@interface ALproblemFeedbackViewController ()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic, strong)ALproblemFeedbackModel *ALproblemfeedbackmodel;
@property(nonatomic, strong)UITableView *ALmainTable;//列表
@property(nonatomic, strong)UIButton *ALsaveButton;//保存按钮
@property(nonatomic, strong)NSMutableArray *ALviewDataArray;//页面数据
@end

@implementation ALproblemFeedbackViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"问题反馈";
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];
    [self ALSetContentView];
}
- (void)ALSetContentView{
    ALCargoAddViewModel *ALFeedbackViewModel = [[ALCargoAddViewModel alloc] init];
    ALFeedbackViewModel.ALTitle = @"反馈内容";
    ALFeedbackViewModel.ALDefault = @"请输入反馈内容";
    [self.ALviewDataArray addObject:ALFeedbackViewModel];
    
    [self.ALmainTable reloadData];
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
    for (int i = 0; i < self.ALviewDataArray.count; i++) {
        ALCargoAddViewModel *ALviewModel = self.ALviewDataArray[i];
        NSString *ALcontentString = [ALHBTool ALremoveSpaceAndNewline:ALviewModel.ALContent];
        if (!ALcontentString.length) {
            if (i == 0) {
                [MBProgressHUD ALshowReminderText:@"请输入反馈内容"];
                return;
            }
        }
    }
    ALCargoAddViewModel *ALfeedbackviewModel = self.ALviewDataArray[0];
    self.ALproblemfeedbackmodel.ALcontent = ALfeedbackviewModel.ALContent;
    
    NSMutableDictionary *jsonDictionary = [[NSMutableDictionary alloc] initWithDictionary:(NSDictionary *)[self.ALproblemfeedbackmodel yy_modelToJSONObject]];
    AVUser *author = [AVUser currentUser];
    AVObject *diary = [AVObject objectWithClassName:@"ALALproblemFeedback"];
        for (NSString *key in jsonDictionary.allKeys) {
            [diary setObject:[jsonDictionary objectForKey:key]  forKey:key];
        }
        [diary setObject:author forKey:@"author"];
        [diary saveInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
            if (isSuccessful) {
                //创建成功后的动作
                [MBProgressHUD ALshowReminderText:NSLocalizedString(@"发送成功", nil)];
                [self.navigationController popViewControllerAnimated:YES];
            } else if (error){
                //发生错误后的动作
                [MBProgressHUD ALshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            } else {
                [MBProgressHUD ALshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.ALviewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    ALCargoAddViewModel *ALViewModel = self.ALviewDataArray[indexPath.row];
    NSString *KMyCellID = @"ALproblemFeedbackTableViewCell";
    NSString *cellID = [NSString stringWithFormat:@"%@%zd",KMyCellID, indexPath.row];
    ALproblemFeedbackTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (!cell) {
        cell = [[ALproblemFeedbackTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    cell.ALViewModel = ALViewModel;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    __weak typeof(self) weakSelf = self;
    cell.ALeditBlock = ^(ALproblemFeedbackTableViewCell * _Nonnull cell) {
        if (cell.ALcontentHeight > ALViewModel.ALEditHeight) {
        [UIView animateWithDuration:0.2 animations:^{
            CGRect frame = self.view.frame;
            frame.origin.y = frame.origin.y - 22;
            self.view.frame = frame;
        }];
        }
        ALViewModel.ALEditHeight = cell.ALcontentHeight;
        [weakSelf.ALmainTable beginUpdates];
        [weakSelf.ALmainTable endUpdates];
    };
    return cell;
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
- (ALproblemFeedbackModel *)ALproblemfeedbackmodel{
    if (!_ALproblemfeedbackmodel) {
        _ALproblemfeedbackmodel = [[ALproblemFeedbackModel alloc] init];
    }
    return _ALproblemfeedbackmodel;
}
- (NSMutableArray *)ALviewDataArray{
    if (!_ALviewDataArray) {
        _ALviewDataArray = [[NSMutableArray alloc] init];
    }
    return _ALviewDataArray;
}
- (UITableView *)ALmainTable{
    if (!_ALmainTable) {
        _ALmainTable = [[UITableView alloc] init];
        _ALmainTable.rowHeight = UITableViewAutomaticDimension;
        _ALmainTable.estimatedRowHeight = 48.0f;
        _ALmainTable.dataSource = self;
        _ALmainTable.delegate = self;
        _ALmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        UITapGestureRecognizer *singleTapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(closeKeyboard:)];
        singleTapGesture.numberOfTapsRequired = 1;
        singleTapGesture.cancelsTouchesInView = NO;
        [_ALmainTable addGestureRecognizer:singleTapGesture];
        [self.view addGestureRecognizer:singleTapGesture];
        UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(closeKeyboard:)];
        [self.view addGestureRecognizer:panGesture];
        [self.view addSubview:self.ALsaveButton];
        [self.ALsaveButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.view).offset(16);
            make.trailing.equalTo(self.view).offset(-16);
            make.bottom.equalTo(self.mas_bottomLayoutGuideTop).offset(-5.5);
            make.height.mas_equalTo(44);
        }];
        [self.view addSubview:_ALmainTable];
        [_ALmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_topLayoutGuideBottom);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.mas_bottomLayoutGuideTop).offset(-55);
        }];
    }
    return _ALmainTable;
}
- (UIButton *)ALsaveButton{
    if (!_ALsaveButton) {
        _ALsaveButton = [[UIButton alloc] init];
        _ALsaveButton.backgroundColor = [UIColor greenColor];
        _ALsaveButton.layer.cornerRadius = 4.0f;
        _ALsaveButton.layer.masksToBounds = YES;
        _ALsaveButton.layer.borderColor = ALH_Color(100, 141, 225, 1).CGColor;
        _ALsaveButton.layer.borderWidth = 0.5f;
        [_ALsaveButton setTitle:@"发送" forState:UIControlStateNormal];
        [_ALsaveButton addTarget:self action:@selector(saveAction:) forControlEvents:UIControlEventTouchUpInside];
        [_ALsaveButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_ALsaveButton.titleLabel setFont:[UIFont systemFontOfSize:15]];
    }
    return _ALsaveButton;
}
@end
