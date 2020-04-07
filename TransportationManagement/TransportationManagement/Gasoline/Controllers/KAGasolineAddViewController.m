//
//  KAGasolineAddViewController.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/6.
//  Copyright © 2020 hb. All rights reserved.
//

#import "KAGasolineAddViewController.h"
#import "KAGasolineViewController.h"
#import "KAGasolineModel.h"
#import "KACargoAddViewModel.h"
#import "KACargoEditableTableViewCell.h"
@interface KAGasolineAddViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)KAGasolineModel *KAModel;
@property(nonatomic, strong)UITableView *KAmainTable;//列表
@property(nonatomic, strong)UIButton *KAsaveButton;//保存按钮
@property(nonatomic, strong)NSMutableArray *KAviewDataArray;//页面数据
@end

@implementation KAGasolineAddViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];
    self.title = @"加油记录";
    [self KASetContentView];
}
- (void)KASetContentView{
    KACargoAddViewModel *KALicensePlateNumberViewModel = [[KACargoAddViewModel alloc] init];
    KALicensePlateNumberViewModel.KATitle = @"车牌号";
    KALicensePlateNumberViewModel.KADefault = @"请输入车牌号";
    [self.KAviewDataArray addObject:KALicensePlateNumberViewModel];
    
    KACargoAddViewModel *KAGasStationLocationViewModel = [[KACargoAddViewModel alloc] init];
    KAGasStationLocationViewModel.KATitle = @"加油站地点";
    KAGasStationLocationViewModel.KADefault = @"请输入加油站地点";
    [self.KAviewDataArray addObject:KAGasStationLocationViewModel];
    
    KACargoAddViewModel *KACostAmountViewModel = [[KACargoAddViewModel alloc] init];
    KACostAmountViewModel.KATitle = @"花费金额(元)";
    KACostAmountViewModel.KADefault = @"请输入花费金额";
    [self.KAviewDataArray addObject:KACostAmountViewModel];
    
    KACargoAddViewModel *KAFuelTypeViewModel = [[KACargoAddViewModel alloc] init];
    KAFuelTypeViewModel.KATitle = @"加油类型";
    KAFuelTypeViewModel.KADefault = @"请输入加油类型";
    [self.KAviewDataArray addObject:KAFuelTypeViewModel];
    
    [self.KAmainTable reloadData];
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
    return self.KAviewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    KACargoAddViewModel *KAViewModel = self.KAviewDataArray[indexPath.row];
    NSString *KMyCellID = @"KACargoEditableTableViewCell";
    NSString *cellID = [NSString stringWithFormat:@"%@%zd",KMyCellID, indexPath.row];
    KACargoEditableTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (!cell) {
        cell = [[KACargoEditableTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    cell.KAViewModel = KAViewModel;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    __weak typeof(self) weakSelf = self;
    cell.KAeditBlock = ^(KACargoEditableTableViewCell * _Nonnull cell) {
        if ([KAViewModel.KATitle hasPrefix:@"加油类型"]) {
        if (cell.KAcontentHeight > KAViewModel.KAEditHeight) {
        [UIView animateWithDuration:0.2 animations:^{
            CGRect frame = self.view.frame;
            frame.origin.y = frame.origin.y -  22;
            self.view.frame = frame;
        }];
        }
        }
        KAViewModel.KAEditHeight = cell.KAcontentHeight;
        [weakSelf.KAmainTable beginUpdates];
        [weakSelf.KAmainTable endUpdates];
    };
    return cell;
}
#pragma mark - 保存
- (void)saveAction:(UIButton *)sender{
    for (int i = 0; i < self.KAviewDataArray.count; i++) {
        KACargoAddViewModel *KAviewModel = self.KAviewDataArray[i];
        NSString *KAcontentString = [KAHBTool KAremoveSpaceAndNewline:KAviewModel.KAContent];
        if (!KAcontentString.length) {
            if (i == 0) {
                [MBProgressHUD KAshowReminderText:@"请输入车牌号"];
                return;
            }else if (i == 1){
                [MBProgressHUD KAshowReminderText:@"请输入加油站地点"];
                return;
            }else if (i == 2){
                [MBProgressHUD KAshowReminderText:@"请输入花费金额"];
                return;
            }else if (i == 3){
                [MBProgressHUD KAshowReminderText:@"请输入加油类型"];
                return;
            }
        }
    }
    KACargoAddViewModel *KALicensePlateNumberviewModel = self.KAviewDataArray[0];
    self.KAModel.KALicensePlateNumber = KALicensePlateNumberviewModel.KAContent;
    KACargoAddViewModel *KAGasStationLocationviewModel = self.KAviewDataArray[1];
    self.KAModel.KAGasStationLocation = KAGasStationLocationviewModel.KAContent;
    KACargoAddViewModel *KACostAmountviewModel = self.KAviewDataArray[2];
    self.KAModel.KACostAmount = [KACostAmountviewModel.KAContent integerValue];
    KACargoAddViewModel *KAFuelTypviewModel = self.KAviewDataArray[3];
    self.KAModel.KAFuelType = KAFuelTypviewModel.KAContent;
    
    NSMutableDictionary *jsonDictionary = [[NSMutableDictionary alloc] initWithDictionary:(NSDictionary *)[self.KAModel yy_modelToJSONObject]];
    [jsonDictionary setObject:[[NSDate alloc] init] forKey:@"KADate"];
    AVUser *author = [AVUser currentUser];
    AVObject *diary = [AVObject objectWithClassName:@"KAGasoline"];
        for (NSString *key in jsonDictionary.allKeys) {
            [diary setObject:[jsonDictionary objectForKey:key]  forKey:key];
        }
        [diary setObject:author forKey:@"author"];
        [diary saveInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
            if (isSuccessful) {
                //创建成功后的动作
                [MBProgressHUD KAshowReminderText:NSLocalizedString(@"保存成功", nil)];
                [self.KASuperVC.KAmainTable.mj_header beginRefreshing];
                [self.navigationController popToRootViewControllerAnimated:YES];
            } else if (error){
                //发生错误后的动作
                [MBProgressHUD KAshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            } else {
                [MBProgressHUD KAshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
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
- (KAGasolineModel *)KAModel{
    if (!_KAModel) {
        _KAModel = [[KAGasolineModel alloc] init];
    }
    return _KAModel;
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
        _KAmainTable.backgroundColor = KAH_Color(242, 242, 242, 1);
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
            make.bottom.equalTo(self.view).offset(-5.5-KAHeightTabBar);
            make.height.mas_equalTo(44);
        }];
        [self.view addSubview:_KAmainTable];
        [_KAmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_topLayoutGuideBottom);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view).offset(-55-KAHeightTabBar);
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
        [_KAsaveButton setTitle:@"保存" forState:UIControlStateNormal];
        [_KAsaveButton addTarget:self action:@selector(saveAction:) forControlEvents:UIControlEventTouchUpInside];
        [_KAsaveButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_KAsaveButton.titleLabel setFont:[UIFont systemFontOfSize:15]];
    }
    return _KAsaveButton;
}
@end
