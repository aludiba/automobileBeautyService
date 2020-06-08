//
//  BGCargoAddViewController.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/2.
//  Copyright © 2020 hb. All rights reserved.
//

#import "BGCargoAddViewController.h"
#import "BGCargoRecordViewController.h"
#import "BGCargoModel.h"
#import "BGCargoAddViewModel.h"
#import "BGCargoEditableTableViewCell.h"

@interface BGCargoAddViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)BGCargoModel *BGModel;
@property(nonatomic, strong)UITableView *BGmainTable;//列表
@property(nonatomic, strong)UIButton *BGsaveButton;//保存按钮
@property(nonatomic, strong)NSMutableArray *BGviewDataArray;//页面数据
@end

@implementation BGCargoAddViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];
    if (self.type == BGCargoTypeWaitReceiving) {
        self.title = NSLocalizedString(@"添加待接货", nil);
    }else if (self.type == BGCargoTypeWaitLoading){
        self.title = NSLocalizedString(@"添加待装载", nil);
    }else if (self.type == BGCargoTypeWaitDelivery){
        self.title = NSLocalizedString(@"添加待送达", nil);
    }else{
        self.title = NSLocalizedString(@"添加已完成", nil);
    }
    [self BGSetContentView];
}
- (void)BGSetContentView{
    self.view.backgroundColor = [UIColor cyanColor];
    BGCargoAddViewModel *BGPlaceViewModel = [[BGCargoAddViewModel alloc] init];
    BGPlaceViewModel.BGTitle = NSLocalizedString(@"地点", nil);
    BGPlaceViewModel.BGDefault = NSLocalizedString(@"请输入地点", nil);
    [self.BGviewDataArray addObject:BGPlaceViewModel];
    
    BGCargoAddViewModel *BGCustomerViewModel = [[BGCargoAddViewModel alloc] init];
    BGCustomerViewModel.BGTitle = NSLocalizedString(@"客户名称", nil);
    BGCustomerViewModel.BGDefault = NSLocalizedString(@"请输入客户名称", nil);
    [self.BGviewDataArray addObject:BGCustomerViewModel];
    
    BGCargoAddViewModel *BGCommodityViewModel = [[BGCargoAddViewModel alloc] init];
    BGCommodityViewModel.BGTitle = NSLocalizedString(@"货物名称", nil);
    BGCommodityViewModel.BGDefault = NSLocalizedString(@"请输入货物名称", nil);
    [self.BGviewDataArray addObject:BGCommodityViewModel];
    
    BGCargoAddViewModel *BGTransportPriceViewModel = [[BGCargoAddViewModel alloc] init];
    BGTransportPriceViewModel.BGTitle = NSLocalizedString(@"运输价格(元)", nil);
    BGTransportPriceViewModel.BGDefault = NSLocalizedString(@"请输入运输价格", nil);
    [self.BGviewDataArray addObject:BGTransportPriceViewModel];
    [self.BGmainTable reloadData];
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
    for (int i = 0; i < self.BGviewDataArray.count; i++) {
        BGCargoAddViewModel *BGviewModel = self.BGviewDataArray[i];
        NSString *BGcontentString = [BGHBTool BGremoveSpaceAndNewline:BGviewModel.BGContent];
        if (!BGcontentString.length) {
            if (i == 0) {
                [MBProgressHUD BGshowReminderText:NSLocalizedString(@"请输入地点", nil)];
                return;
            }else if (i == 1){
                [MBProgressHUD BGshowReminderText:NSLocalizedString(@"请输入客户名称", nil)];
                return;
            }else if (i == 2){
                [MBProgressHUD BGshowReminderText:NSLocalizedString(@"请输入货物名称", nil)];
                return;
            }else if (i == 3){
                [MBProgressHUD BGshowReminderText:NSLocalizedString(@"请输入运输价格", nil)];
                return;
            }
        }
    }
    BGCargoAddViewModel *BGplaceviewModel = self.BGviewDataArray[0];
    self.BGModel.BGPlace = BGplaceviewModel.BGContent;
    BGCargoAddViewModel *BGCustomerviewModel = self.BGviewDataArray[1];
    self.BGModel.BGCustomerName = BGCustomerviewModel.BGContent;
    BGCargoAddViewModel *BGCommodityviewModel = self.BGviewDataArray[2];
    self.BGModel.BGCommodityName = BGCommodityviewModel.BGContent;
    BGCargoAddViewModel *BGTransportPriceviewModel = self.BGviewDataArray[3];
    CGFloat BGTransportPrice = [BGTransportPriceviewModel.BGContent floatValue];
    self.BGModel.BGTransportPrice = BGTransportPrice;
    
    NSMutableDictionary *jsonDictionary = [[NSMutableDictionary alloc] initWithDictionary:(NSDictionary *)[self.BGModel yy_modelToJSONObject]];
    [jsonDictionary setObject:[[NSDate alloc] init] forKey:@"BGDate"];
    AVUser *author = [AVUser currentUser];
    AVObject *diary;
        if (self.type == BGCargoTypeWaitReceiving) {
            diary = [AVObject objectWithClassName:@"BGCargoRecordWaitReceiving"];
        }else if (self.type == BGCargoTypeWaitLoading){
           diary = [AVObject objectWithClassName:@"BGCargoRecordWaitLoading"];
        }else if (self.type == BGCargoTypeWaitDelivery){
            diary = [AVObject objectWithClassName:@"BGCargoRecordWaitDelivery"];
        }else{
            diary = [AVObject objectWithClassName:@"BGCargoRecordCompleted"];
        }
        for (NSString *key in jsonDictionary.allKeys) {
            [diary setObject:[jsonDictionary objectForKey:key]  forKey:key];
        }
        [diary setObject:author forKey:@"author"];
        [diary saveInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
            if (isSuccessful) {
                //创建成功后的动作
                [MBProgressHUD BGshowReminderText:NSLocalizedString(@"保存成功", nil)];
                [self.BGsuperVC.BGmainTable.mj_header beginRefreshing];
                [self.navigationController popViewControllerAnimated:YES];
            } else if (error){
                //发生错误后的动作
                [MBProgressHUD BGshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            } else {
                [MBProgressHUD BGshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
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
        if ([BGViewModel.BGTitle hasPrefix:NSLocalizedString(@"运输价格(元)", nil)]) {
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
#pragma mark - UIScrollViewDelegate
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    [self.view endEditing:YES];
}
#pragma mark - 关闭键盘
- (void)closeKeyboard:(UITapGestureRecognizer *)recognizer {
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (BGCargoModel *)BGModel{
    if (!_BGModel) {
        _BGModel = [[BGCargoModel alloc] init];
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
        _BGmainTable.backgroundColor = [UIColor cyanColor];
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
            make.bottom.equalTo(self.mas_bottomLayoutGuideTop).offset(-5.5);
            make.height.mas_equalTo(44);
        }];
        [self.view addSubview:_BGmainTable];
        [_BGmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_topLayoutGuideBottom);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.mas_bottomLayoutGuideTop).offset(-55);
        }];
    }
    return _BGmainTable;
}
- (UIButton *)BGsaveButton{
    if (!_BGsaveButton) {
        _BGsaveButton = [[UIButton alloc] init];
        _BGsaveButton.backgroundColor = [UIColor colorWithRed:100/255.0 green:141/255.0 blue:225/255.0 alpha:1/1.0];
        _BGsaveButton.layer.cornerRadius = 12.0f;
        _BGsaveButton.layer.masksToBounds = YES;
        _BGsaveButton.layer.borderColor = [UIColor greenColor].CGColor;
        _BGsaveButton.layer.borderWidth = 1.5f;
        [_BGsaveButton setTitle:NSLocalizedString(@"添加", nil) forState:UIControlStateNormal];
        [_BGsaveButton addTarget:self action:@selector(saveAction:) forControlEvents:UIControlEventTouchUpInside];
        [_BGsaveButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_BGsaveButton.titleLabel setFont:[UIFont systemFontOfSize:15]];
    }
    return _BGsaveButton;
}
@end
