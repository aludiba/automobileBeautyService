//
//  ALGasolineAddViewController.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/6.
//  Copyright © 2020 hb. All rights reserved.
//

#import "ALGasolineAddViewController.h"
#import "ALGasolineViewController.h"
#import "ALGasolineModel.h"
#import "ALCargoAddViewModel.h"
#import "ALCargoEditableTableViewCell.h"
@interface ALGasolineAddViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)ALGasolineModel *ALModel;
@property(nonatomic, strong)UITableView *ALmainTable;//列表
@property(nonatomic, strong)UIButton *ALsaveButton;//保存按钮
@property(nonatomic, strong)NSMutableArray *ALviewDataArray;//页面数据
@end

@implementation ALGasolineAddViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];
    self.title = @"加油记录";
    [self ALSetContentView];
}
- (void)ALSetContentView{
    ALCargoAddViewModel *ALLicensePlateNumberViewModel = [[ALCargoAddViewModel alloc] init];
    ALLicensePlateNumberViewModel.ALTitle = @"车牌号";
    ALLicensePlateNumberViewModel.ALDefault = @"请输入车牌号";
    [self.ALviewDataArray addObject:ALLicensePlateNumberViewModel];
    
    ALCargoAddViewModel *ALGasStationLocationViewModel = [[ALCargoAddViewModel alloc] init];
    ALGasStationLocationViewModel.ALTitle = @"加油站地点";
    ALGasStationLocationViewModel.ALDefault = @"请输入加油站地点";
    [self.ALviewDataArray addObject:ALGasStationLocationViewModel];
    
    ALCargoAddViewModel *ALCostAmountViewModel = [[ALCargoAddViewModel alloc] init];
    ALCostAmountViewModel.ALTitle = @"花费金额(元)";
    ALCostAmountViewModel.ALDefault = @"请输入花费金额";
    [self.ALviewDataArray addObject:ALCostAmountViewModel];
    
    ALCargoAddViewModel *ALFuelTypeViewModel = [[ALCargoAddViewModel alloc] init];
    ALFuelTypeViewModel.ALTitle = @"加油类型";
    ALFuelTypeViewModel.ALDefault = @"请输入加油类型";
    [self.ALviewDataArray addObject:ALFuelTypeViewModel];
    
    [self.ALmainTable reloadData];
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
    return self.ALviewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    ALCargoAddViewModel *ALViewModel = self.ALviewDataArray[indexPath.row];
    NSString *KMyCellID = @"ALCargoEditableTableViewCell";
    NSString *cellID = [NSString stringWithFormat:@"%@%zd",KMyCellID, indexPath.row];
    ALCargoEditableTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (!cell) {
        cell = [[ALCargoEditableTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    cell.ALViewModel = ALViewModel;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    __weak typeof(self) weakSelf = self;
    cell.ALeditBlock = ^(ALCargoEditableTableViewCell * _Nonnull cell) {
        if ([ALViewModel.ALTitle hasPrefix:@"加油类型"]) {
        if (cell.ALcontentHeight > ALViewModel.ALEditHeight) {
        [UIView animateWithDuration:0.2 animations:^{
            CGRect frame = self.view.frame;
            frame.origin.y = frame.origin.y -  22;
            self.view.frame = frame;
        }];
        }
        }
        ALViewModel.ALEditHeight = cell.ALcontentHeight;
        [weakSelf.ALmainTable beginUpdates];
        [weakSelf.ALmainTable endUpdates];
    };
    return cell;
}
#pragma mark - 保存
- (void)saveAction:(UIButton *)sender{
    for (int i = 0; i < self.ALviewDataArray.count; i++) {
        ALCargoAddViewModel *ALviewModel = self.ALviewDataArray[i];
        NSString *ALcontentString = [ALHBTool ALremoveSpaceAndNewline:ALviewModel.ALContent];
        if (!ALcontentString.length) {
            if (i == 0) {
                [MBProgressHUD ALshowReminderText:@"请输入车牌号"];
                return;
            }else if (i == 1){
                [MBProgressHUD ALshowReminderText:@"请输入加油站地点"];
                return;
            }else if (i == 2){
                [MBProgressHUD ALshowReminderText:@"请输入花费金额"];
                return;
            }else if (i == 3){
                [MBProgressHUD ALshowReminderText:@"请输入加油类型"];
                return;
            }
        }
    }
    ALCargoAddViewModel *ALLicensePlateNumberviewModel = self.ALviewDataArray[0];
    self.ALModel.ALLicensePlateNumber = ALLicensePlateNumberviewModel.ALContent;
    ALCargoAddViewModel *ALGasStationLocationviewModel = self.ALviewDataArray[1];
    self.ALModel.ALGasStationLocation = ALGasStationLocationviewModel.ALContent;
    ALCargoAddViewModel *ALCostAmountviewModel = self.ALviewDataArray[2];
    self.ALModel.ALCostAmount = [ALCostAmountviewModel.ALContent integerValue];
    ALCargoAddViewModel *ALFuelTypviewModel = self.ALviewDataArray[3];
    self.ALModel.ALFuelType = ALFuelTypviewModel.ALContent;
    
    NSMutableDictionary *jsonDictionary = [[NSMutableDictionary alloc] initWithDictionary:(NSDictionary *)[self.ALModel yy_modelToJSONObject]];
    [jsonDictionary setObject:[[NSDate alloc] init] forKey:@"ALDate"];
    AVUser *author = [AVUser currentUser];
    AVObject *diary = [AVObject objectWithClassName:@"ALGasoline"];
        for (NSString *key in jsonDictionary.allKeys) {
            [diary setObject:[jsonDictionary objectForKey:key]  forKey:key];
        }
        [diary setObject:author forKey:@"author"];
        [diary saveInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
            if (isSuccessful) {
                //创建成功后的动作
                [MBProgressHUD ALshowReminderText:NSLocalizedString(@"保存成功", nil)];
                [self.ALSuperVC.ALmainTable.mj_header beginRefreshing];
                [self.navigationController popToRootViewControllerAnimated:YES];
            } else if (error){
                //发生错误后的动作
                [MBProgressHUD ALshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            } else {
                [MBProgressHUD ALshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
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
- (ALGasolineModel *)ALModel{
    if (!_ALModel) {
        _ALModel = [[ALGasolineModel alloc] init];
    }
    return _ALModel;
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
        _ALmainTable.backgroundColor = ALH_Color(242, 242, 242, 1);
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
            make.bottom.equalTo(self.view).offset(-5.5-ALHeightTabBar);
            make.height.mas_equalTo(44);
        }];
        [self.view addSubview:_ALmainTable];
        [_ALmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_topLayoutGuideBottom);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view).offset(-55-ALHeightTabBar);
        }];
    }
    return _ALmainTable;
}
- (UIButton *)ALsaveButton{
    if (!_ALsaveButton) {
        _ALsaveButton = [[UIButton alloc] init];
        _ALsaveButton.backgroundColor = [UIColor systemGreenColor];
        _ALsaveButton.layer.cornerRadius = 4.0f;
        _ALsaveButton.layer.masksToBounds = YES;
        _ALsaveButton.layer.borderColor = ALH_Color(100, 141, 225, 1).CGColor;
        _ALsaveButton.layer.borderWidth = 0.5f;
        [_ALsaveButton setTitle:@"保存" forState:UIControlStateNormal];
        [_ALsaveButton addTarget:self action:@selector(saveAction:) forControlEvents:UIControlEventTouchUpInside];
        [_ALsaveButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_ALsaveButton.titleLabel setFont:[UIFont systemFontOfSize:15]];
    }
    return _ALsaveButton;
}
@end
