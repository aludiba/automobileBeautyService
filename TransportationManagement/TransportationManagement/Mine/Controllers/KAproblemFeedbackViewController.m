//
//  KAproblemFeedbackViewController.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/7.
//  Copyright © 2020 hb. All rights reserved.
//

#import "KAproblemFeedbackViewController.h"
#import "KAproblemFeedbackModel.h"
#import "KACargoAddViewModel.h"
#import "KAproblemFeedbackTableViewCell.h"
@interface KAproblemFeedbackViewController ()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic, strong)KAproblemFeedbackModel *KAproblemfeedbackmodel;
@property(nonatomic, strong)UITableView *KAmainTable;//列表
@property(nonatomic, strong)UIButton *KAsaveButton;//保存按钮
@property(nonatomic, strong)NSMutableArray *KAviewDataArray;//页面数据
@end

@implementation KAproblemFeedbackViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"问题反馈";
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];
    [self KASetContentView];
}
- (void)KASetContentView{
    KACargoAddViewModel *KAFeedbackViewModel = [[KACargoAddViewModel alloc] init];
    KAFeedbackViewModel.KATitle = @"反馈内容";
    KAFeedbackViewModel.KADefault = @"请输入反馈内容";
    [self.KAviewDataArray addObject:KAFeedbackViewModel];
    
    [self.KAmainTable reloadData];
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
    for (int i = 0; i < self.KAviewDataArray.count; i++) {
        KACargoAddViewModel *KAviewModel = self.KAviewDataArray[i];
        NSString *KAcontentString = [KAHBTool KAremoveSpaceAndNewline:KAviewModel.KAContent];
        if (!KAcontentString.length) {
            if (i == 0) {
                [MBProgressHUD KAshowReminderText:@"请输入反馈内容"];
                return;
            }
        }
    }
    KACargoAddViewModel *KAfeedbackviewModel = self.KAviewDataArray[0];
    self.KAproblemfeedbackmodel.KAcontent = KAfeedbackviewModel.KAContent;
    
    NSMutableDictionary *jsonDictionary = [[NSMutableDictionary alloc] initWithDictionary:(NSDictionary *)[self.KAproblemfeedbackmodel yy_modelToJSONObject]];
    AVUser *author = [AVUser currentUser];
    AVObject *diary = [AVObject objectWithClassName:@"KAKAproblemFeedback"];
        for (NSString *key in jsonDictionary.allKeys) {
            [diary setObject:[jsonDictionary objectForKey:key]  forKey:key];
        }
        [diary setObject:author forKey:@"author"];
        [diary saveInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
            if (isSuccessful) {
                //创建成功后的动作
                [MBProgressHUD KAshowReminderText:NSLocalizedString(@"发送成功", nil)];
                [self.navigationController popViewControllerAnimated:YES];
            } else if (error){
                //发生错误后的动作
                [MBProgressHUD KAshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            } else {
                [MBProgressHUD KAshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.KAviewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    KACargoAddViewModel *KAViewModel = self.KAviewDataArray[indexPath.row];
    NSString *KMyCellID = @"KAproblemFeedbackTableViewCell";
    NSString *cellID = [NSString stringWithFormat:@"%@%zd",KMyCellID, indexPath.row];
    KAproblemFeedbackTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (!cell) {
        cell = [[KAproblemFeedbackTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    cell.KAViewModel = KAViewModel;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    __weak typeof(self) weakSelf = self;
    cell.KAeditBlock = ^(KAproblemFeedbackTableViewCell * _Nonnull cell) {
        if (cell.KAcontentHeight > KAViewModel.KAEditHeight) {
        [UIView animateWithDuration:0.2 animations:^{
            CGRect frame = self.view.frame;
            frame.origin.y = frame.origin.y - 22;
            self.view.frame = frame;
        }];
        }
        KAViewModel.KAEditHeight = cell.KAcontentHeight;
        [weakSelf.KAmainTable beginUpdates];
        [weakSelf.KAmainTable endUpdates];
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
- (KAproblemFeedbackModel *)KAproblemfeedbackmodel{
    if (!_KAproblemfeedbackmodel) {
        _KAproblemfeedbackmodel = [[KAproblemFeedbackModel alloc] init];
    }
    return _KAproblemfeedbackmodel;
}
- (NSMutableArray *)KAviewDataArray{
    if (!_KAviewDataArray) {
        _KAviewDataArray = [[NSMutableArray alloc] init];
    }
    return _KAviewDataArray;
}
- (UITableView *)KAmainTable{
    if (!_KAmainTable) {
        _KAmainTable = [[UITableView alloc] init];
        _KAmainTable.rowHeight = UITableViewAutomaticDimension;
        _KAmainTable.estimatedRowHeight = 48.0f;
        _KAmainTable.dataSource = self;
        _KAmainTable.delegate = self;
        _KAmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        UITapGestureRecognizer *singleTapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(closeKeyboard:)];
        singleTapGesture.numberOfTapsRequired = 1;
        singleTapGesture.cancelsTouchesInView = NO;
        [_KAmainTable addGestureRecognizer:singleTapGesture];
        [self.view addGestureRecognizer:singleTapGesture];
        UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(closeKeyboard:)];
        [self.view addGestureRecognizer:panGesture];
        [self.view addSubview:self.KAsaveButton];
        [self.KAsaveButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.view).offset(16);
            make.trailing.equalTo(self.view).offset(-16);
            make.bottom.equalTo(self.mas_bottomLayoutGuideTop).offset(-5.5);
            make.height.mas_equalTo(44);
        }];
        [self.view addSubview:_KAmainTable];
        [_KAmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_topLayoutGuideBottom);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.mas_bottomLayoutGuideTop).offset(-55);
        }];
    }
    return _KAmainTable;
}
- (UIButton *)KAsaveButton{
    if (!_KAsaveButton) {
        _KAsaveButton = [[UIButton alloc] init];
        _KAsaveButton.backgroundColor = [UIColor colorWithRed:100/255.0 green:141/255.0 blue:225/255.0 alpha:1/1.0];
        _KAsaveButton.layer.cornerRadius = 4.0f;
        _KAsaveButton.layer.masksToBounds = YES;
        _KAsaveButton.layer.borderColor = KAH_Color(100, 141, 225, 1).CGColor;
        _KAsaveButton.layer.borderWidth = 0.5f;
        [_KAsaveButton setTitle:@"发送" forState:UIControlStateNormal];
        [_KAsaveButton addTarget:self action:@selector(saveAction:) forControlEvents:UIControlEventTouchUpInside];
        [_KAsaveButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_KAsaveButton.titleLabel setFont:[UIFont systemFontOfSize:15]];
    }
    return _KAsaveButton;
}
@end
