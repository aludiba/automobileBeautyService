//
//  BGRoadAddViewController.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/7.
//  Copyright © 2020 hb. All rights reserved.
//

#import "BGRoadAddViewController.h"
#import "BGRoadModel.h"
#import "BGCargoAddViewModel.h"
#import "BGCargoEditableTableViewCell.h"
#import "BGRoadViewController.h"
@interface BGRoadAddViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)BGRoadModel *BGModel;
@property(nonatomic, strong)UITableView *BGmainTable;//列表
@property(nonatomic, strong)UIButton *BGsaveButton;//保存按钮
@property(nonatomic, strong)NSMutableArray *BGviewDataArray;//页面数据
@end

@implementation BGRoadAddViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];
    self.title = @"路况延时";
    [self BGSetContentView];
}
- (void)BGSetContentView{
    BGCargoAddViewModel *BGLicensePlateNumberViewModel = [[BGCargoAddViewModel alloc] init];
    BGLicensePlateNumberViewModel.BGTitle = @"车牌号";
    BGLicensePlateNumberViewModel.BGDefault = @"请输入车牌号";
    [self.BGviewDataArray addObject:BGLicensePlateNumberViewModel];
    
    BGCargoAddViewModel *BGDriverNameViewModel = [[BGCargoAddViewModel alloc] init];
    BGDriverNameViewModel.BGTitle = @"司机名称";
    BGDriverNameViewModel.BGDefault = @"请输入司机名称";
    [self.BGviewDataArray addObject:BGDriverNameViewModel];
    
    BGCargoAddViewModel *BGsituationViewModel = [[BGCargoAddViewModel alloc] init];
    BGsituationViewModel.BGTitle = @"情况";
    BGsituationViewModel.BGDefault = @"请输入情况";
    [self.BGviewDataArray addObject:BGsituationViewModel];
    
    BGCargoAddViewModel *BGplugginglengthViewModel = [[BGCargoAddViewModel alloc] init];
    BGplugginglengthViewModel.BGTitle = @"已堵时长(小时)";
    BGplugginglengthViewModel.BGDefault = @"请输入已堵时长";
    [self.BGviewDataArray addObject:BGplugginglengthViewModel];
    
    BGCargoAddViewModel *BGlocationViewModel = [[BGCargoAddViewModel alloc] init];
    BGlocationViewModel.BGTitle = @"位置";
    BGlocationViewModel.BGDefault = @"请输入位置";
    [self.BGviewDataArray addObject:BGlocationViewModel];
    
    [self.BGmainTable reloadData];
}
- (void)keyboardWillHide:(NSNotification *)note{
//    self.isDetails = NO;
    //取得键盘弹出时间
    CGFloat duration = [note.userInfo[UIKeyboardAnimationDurationUserInfoKey] floatValue];
    //取得键盘高度
       [UIView animateWithDuration:duration delay:0 options:7 << 16 animations:^{
           self.view.transform = CGAffineTransformIdentity;
           self.view.frame = self.view.bounds;
       } completion:nil];
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.BGviewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    BGCargoAddViewModel *BGViewModel = self.BGviewDataArray[indexPath.row];
    NSString *KMyCellID = @"BGCargoEditableTableViewCell";
    NSString *cellID = [NSString stringWithFormat:@"%@%zd",KMyCellID, indexPath.row];
    BGCargoEditableTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (!cell) {
        cell = [[BGCargoEditableTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    cell.BGViewModel = BGViewModel;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    __weak typeof(self) weakSelf = self;
    cell.BGeditBlock = ^(BGCargoEditableTableViewCell * _Nonnull cell) {
        if ([BGViewModel.BGTitle hasPrefix:@"位置"]) {
        if (cell.BGcontentHeight > BGViewModel.BGEditHeight) {
        [UIView animateWithDuration:0.2 animations:^{
            CGRect frame = self.view.frame;
            frame.origin.y = frame.origin.y -  22;
            self.view.frame = frame;
        }];
        }
        }
        BGViewModel.BGEditHeight = cell.BGcontentHeight;
        [weakSelf.BGmainTable beginUpdates];
        [weakSelf.BGmainTable endUpdates];
    };
    return cell;
}
#pragma mark - 保存
- (void)saveAction:(UIButton *)sender{
    for (int i = 0; i < self.BGviewDataArray.count; i++) {
        BGCargoAddViewModel *BGviewModel = self.BGviewDataArray[i];
        NSString *BGcontentString = [BGHBTool BGremoveSpaceAndNewline:BGviewModel.BGContent];
        if (!BGcontentString.length) {
            if (i == 0) {
                [MBProgressHUD BGshowReminderText:@"请输入车牌号"];
                return;
            }else if (i == 1){
                [MBProgressHUD BGshowReminderText:@"请输入司机名称"];
                return;
            }else if (i == 2){
                [MBProgressHUD BGshowReminderText:@"请输入情况"];
                return;
            }else if (i == 3){
                [MBProgressHUD BGshowReminderText:@"请输入已堵时长"];
                return;
            }else if (i == 4){
                [MBProgressHUD BGshowReminderText:@"请输入位置"];
                return;
            }
        }
    }
    BGCargoAddViewModel *BGLicensePlateNumberviewModel = self.BGviewDataArray[0];
    self.BGModel.BGLicensePlateNumber = BGLicensePlateNumberviewModel.BGContent;
    BGCargoAddViewModel *BGDriverNameviewModel = self.BGviewDataArray[1];
    self.BGModel.BGDriverName = BGDriverNameviewModel.BGContent;
    BGCargoAddViewModel *BGSituationviewModel = self.BGviewDataArray[2];
    self.BGModel.BGSituation = BGSituationviewModel.BGContent;
    BGCargoAddViewModel *BGPluggingLengthviewModel = self.BGviewDataArray[3];
    self.BGModel.BGPluggingLength = [BGPluggingLengthviewModel.BGContent integerValue];
    BGCargoAddViewModel *BGLocationviewModel = self.BGviewDataArray[4];
    self.BGModel.BGLocation = BGLocationviewModel.BGContent;
    
    NSMutableDictionary *jsonDictionary = [[NSMutableDictionary alloc] initWithDictionary:(NSDictionary *)[self.BGModel yy_modelToJSONObject]];
    [jsonDictionary setObject:[[NSDate alloc] init] forKey:@"BGDate"];
    AVUser *author = [AVUser currentUser];
    AVObject *diary = [AVObject objectWithClassName:@"BGRoad"];
        for (NSString *key in jsonDictionary.allKeys) {
            [diary setObject:[jsonDictionary objectForKey:key]  forKey:key];
        }
        [diary setObject:author forKey:@"author"];
        [diary saveInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
            if (isSuccessful) {
                //创建成功后的动作
                [MBProgressHUD BGshowReminderText:NSLocalizedString(@"保存成功", nil)];
                [self.BGsuperVC.BGmainTable.mj_header beginRefreshing];
                [self.navigationController popToRootViewControllerAnimated:YES];
            } else if (error){
                //发生错误后的动作
                [MBProgressHUD BGshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            } else {
                [MBProgressHUD BGshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
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
- (BGRoadModel *)BGModel{
    if (!_BGModel) {
        _BGModel = [[BGRoadModel alloc] init];
    }
    return _BGModel;
}
- (NSMutableArray *)BGviewDataArray{
    if (!_BGviewDataArray) {
        _BGviewDataArray = [[NSMutableArray alloc] init];
    }
    return _BGviewDataArray;
}
- (UITableView *)BGmainTable{
    if (!_BGmainTable) {
        _BGmainTable = [[UITableView alloc] init];
        _BGmainTable.backgroundColor = BGH_Color(242, 242, 242, 1);
        _BGmainTable.rowHeight = UITableViewAutomaticDimension;
        _BGmainTable.estimatedRowHeight = 48.0f;
        _BGmainTable.dataSource = self;
        _BGmainTable.delegate = self;
        _BGmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        UITapGestureRecognizer *singleTapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(closeKeyboard:)];
        singleTapGesture.numberOfTapsRequired = 1;
        singleTapGesture.cancelsTouchesInView = NO;
        [_BGmainTable addGestureRecognizer:singleTapGesture];
        [self.view addGestureRecognizer:singleTapGesture];
        UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(closeKeyboard:)];
        [self.view addGestureRecognizer:panGesture];
        [self.view addSubview:self.BGsaveButton];
        [self.BGsaveButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.view).offset(16);
            make.trailing.equalTo(self.view).offset(-16);
            make.bottom.equalTo(self.view).offset(-5.5-BGHeightTabBar);
            make.height.mas_equalTo(44);
        }];
        [self.view addSubview:_BGmainTable];
        [_BGmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_topLayoutGuideBottom);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view).offset(-55-BGHeightTabBar);
        }];
    }
    return _BGmainTable;
}
- (UIButton *)BGsaveButton{
    if (!_BGsaveButton) {
        _BGsaveButton = [[UIButton alloc] init];
        _BGsaveButton.backgroundColor = [UIColor colorWithRed:100/255.0 green:141/255.0 blue:225/255.0 alpha:1/1.0];
        _BGsaveButton.layer.cornerRadius = 4.0f;
        _BGsaveButton.layer.masksToBounds = YES;
        _BGsaveButton.layer.borderColor = BGH_Color(100, 141, 225, 1).CGColor;
        _BGsaveButton.layer.borderWidth = 0.5f;
        [_BGsaveButton setTitle:@"保存" forState:UIControlStateNormal];
        [_BGsaveButton addTarget:self action:@selector(saveAction:) forControlEvents:UIControlEventTouchUpInside];
        [_BGsaveButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_BGsaveButton.titleLabel setFont:[UIFont systemFontOfSize:15]];
    }
    return _BGsaveButton;
}
@end
