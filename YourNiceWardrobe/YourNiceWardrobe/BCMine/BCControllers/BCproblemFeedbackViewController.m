//
//  BCproblemFeedbackViewController.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/7.
//  Copyright © 2020 hb. BCl rights reserved.
//

#import "BCproblemFeedbackViewController.h"
#import "BCproblemFeedbackModel.h"
#import "BCDressUpAddModel.h"
#import "BCproblemFeedbackTableViewCell.h"
@interface BCproblemFeedbackViewController ()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic, strong)BCproblemFeedbackModel *BCproblemfeedbackmodel;
@property(nonatomic, strong)UITableView *BCmainTable;//列表
@property(nonatomic, strong)UIButton *BCsaveButton;//保存按钮
@property(nonatomic, strong)NSMutableArray *BCviewDataArray;//页面数据
@end

@implementation BCproblemFeedbackViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additionBC setup after loading the view.
    self.title = @"问题反馈";
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(BCkeyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];
    [self BCSetContentView];
}
- (void)BCSetContentView{
    BCDressUpAddModel *BCFeedbackViewModel = [[BCDressUpAddModel alloc] init];
    BCFeedbackViewModel.BCTitle = @"反馈内容";
    BCFeedbackViewModel.BCDefault = @"请输入反馈内容";
    [self.BCviewDataArray addObject:BCFeedbackViewModel];
    
    [self.BCmainTable reloadData];
}
- (void)BCkeyboardWillHide:(NSNotification *)BCnote
{
//    self.isDetails = NO;
    //取得键盘弹出时间
    CGFloat BCduration = [BCnote.userInfo[UIKeyboardAnimationDurationUserInfoKey] floatValue];
    //取得键盘高度
       [UIView animateWithDuration:BCduration delay:0 options:7 << 16 animations:^{
           self.view.transform = CGAffineTransformIdentity;
           self.view.frame = self.view.bounds;
       } completion:nil];
}
- (void)BCsaveAction:(UIButton *)BCsender{
    for (int i = 0; i < self.BCviewDataArray.count; i++) {
        BCDressUpAddModel *BCviewModel = self.BCviewDataArray[i];
        NSString *BCcontentString = [BCHBTool BCremoveSpaceAndNewline:BCviewModel.BCContent];
        if (!BCcontentString.length) {
            if (i == 0) {
                [MBProgressHUD BCshowReminderText:@"请输入反馈内容"];
                return;
            }
        }
    }
    BCDressUpAddModel *BCfeedbackviewModel = self.BCviewDataArray[0];
    self.BCproblemfeedbackmodel.BCcontent = BCfeedbackviewModel.BCContent;
    
    NSMutableDictionary *BCjsonDictionary = [[NSMutableDictionary alloc] initWithDictionary:(NSDictionary *)[self.BCproblemfeedbackmodel yy_modelToJSONObject]];
    AVUser *BCauthor = [AVUser currentUser];
    AVObject *BCdiary = [AVObject objectWithClassName:@"BCproblemFeedback"];
        for (NSString *key in BCjsonDictionary.allKeys) {
            [BCdiary setObject:[BCjsonDictionary objectForKey:key]  forKey:key];
        }
        [BCdiary setObject:BCauthor forKey:@"author"];
        [BCdiary saveInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
            if (isSuccessful) {
                //创建成功后的动作
                [MBProgressHUD BCshowReminderText:@"发送成功"];
                [self.navigationController popViewControllerAnimated:YES];
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
    return self.BCviewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    BCDressUpAddModel *BCViewModel = self.BCviewDataArray[indexPath.row];
    NSString *KMyCellID = @"BCproblemFeedbackTableViewCell";
    NSString *cellID = [NSString stringWithFormat:@"%@%zd",KMyCellID, indexPath.row];
    BCproblemFeedbackTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (!cell) {
        cell = [[BCproblemFeedbackTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    cell.BCViewModel = BCViewModel;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    __weak typeof(self) weakSelf = self;
    cell.BCeditBlock = ^(BCproblemFeedbackTableViewCell * _Nonnull cell) {
        if (cell.BCcontentHeight > BCViewModel.BCEditHeight) {
        [UIView animateWithDuration:0.2 animations:^{
            CGRect frame = self.view.frame;
            frame.origin.y = frame.origin.y - 22;
            self.view.frame = frame;
        }];
        }
        BCViewModel.BCEditHeight = cell.BCcontentHeight;
        [weakSelf.BCmainTable beginUpdates];
        [weakSelf.BCmainTable endUpdates];
    };
    return cell;
}
#pragma mark - UIScrollViewDelegate
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    [self.view endEditing:YES];
}
#pragma mark - 关闭键盘
- (void)BCcloseKeyboard:(UITapGestureRecognizer *)recognizer {
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (BCproblemFeedbackModel *)BCproblemfeedbackmodel{
    if (!_BCproblemfeedbackmodel) {
        _BCproblemfeedbackmodel = [[BCproblemFeedbackModel alloc] init];
    }
    return _BCproblemfeedbackmodel;
}
- (NSMutableArray *)BCviewDataArray{
    if (!_BCviewDataArray) {
        _BCviewDataArray = [[NSMutableArray alloc] init];
    }
    return _BCviewDataArray;
}
- (UITableView *)BCmainTable{
    if (!_BCmainTable) {
        _BCmainTable = [[UITableView alloc] init];
        _BCmainTable.rowHeight = UITableViewAutomaticDimension;
        _BCmainTable.estimatedRowHeight = 48.0f;
        _BCmainTable.dataSource = self;
        _BCmainTable.delegate = self;
        _BCmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        UITapGestureRecognizer *singleTapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(BCcloseKeyboard:)];
        singleTapGesture.numberOfTapsRequired = 1;
        singleTapGesture.cancelsTouchesInView = NO;
        [_BCmainTable addGestureRecognizer:singleTapGesture];
        [self.view addGestureRecognizer:singleTapGesture];
        UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(BCcloseKeyboard:)];
        [self.view addGestureRecognizer:panGesture];
        [self.view addSubview:_BCmainTable];
        [_BCmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_topLayoutGuideBottom);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.mas_bottomLayoutGuideTop).offset(-74);
        }];
        [self.view addSubview:self.BCsaveButton];
        [self.BCsaveButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.view).offset(16);
            make.trailing.equalTo(self.view).offset(-16);
            make.bottom.equalTo(self.mas_bottomLayoutGuideTop).offset(-30);
            make.height.mas_equalTo(44);
        }];
    }
    return _BCmainTable;
}
- (UIButton *)BCsaveButton{
    if (!_BCsaveButton) {
        _BCsaveButton = [[UIButton alloc] init];
        _BCsaveButton.backgroundColor = [UIColor blueColor];
        _BCsaveButton.layer.cornerRadius = 8.0f;
        _BCsaveButton.layer.masksToBounds = YES;
        [_BCsaveButton setTitle:@"发送" forState:UIControlStateNormal];
        [_BCsaveButton addTarget:self action:@selector(BCsaveAction:) forControlEvents:UIControlEventTouchUpInside];
        [_BCsaveButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_BCsaveButton.titleLabel setFont:[UIFont systemFontOfSize:17]];
    }
    return _BCsaveButton;
}
@end
