//
//  KACargoAddViewController.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/2.
//  Copyright © 2020 hb. All rights reserved.
//

#import "KACargoAddViewController.h"
#import "KACargoRecordViewController.h"
#import "KACargoModel.h"
#import "KACargoAddViewModel.h"
#import "KACargoEditableTableViewCell.h"

@interface KACargoAddViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)KACargoModel *KAModel;
@property(nonatomic, strong)UITableView *KAmainTable;//列表
@property(nonatomic, strong)UIButton *KAsaveButton;//保存按钮
@property(nonatomic, strong)NSMutableArray *KAviewDataArray;//页面数据
@end

@implementation KACargoAddViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];
    if (self.type == KACargoTypeWaitReceiving) {
        self.title = @"添加待接货";
    }else if (self.type == KACargoTypeWaitLoading){
        self.title = @"添加待装载";
    }else if (self.type == KACargoTypeWaitDelivery){
        self.title = @"添加待送达";
    }else{
        self.title = @"添加已完成";
    }
    [self KASetContentView];
}
- (void)KASetContentView{
    KACargoAddViewModel *KAPlaceViewModel = [[KACargoAddViewModel alloc] init];
    KAPlaceViewModel.KATitle = @"地点";
    KAPlaceViewModel.KADefault = @"请输入地点";
    [self.KAviewDataArray addObject:KAPlaceViewModel];
    
    KACargoAddViewModel *KACustomerViewModel = [[KACargoAddViewModel alloc] init];
    KACustomerViewModel.KATitle = @"客户名称";
    KACustomerViewModel.KADefault = @"请输入客户名称";
    [self.KAviewDataArray addObject:KACustomerViewModel];
    
    KACargoAddViewModel *KACommodityViewModel = [[KACargoAddViewModel alloc] init];
    KACommodityViewModel.KATitle = @"货物名称";
    KACommodityViewModel.KADefault = @"请输入货物名称";
    [self.KAviewDataArray addObject:KACommodityViewModel];
    
    KACargoAddViewModel *KATransportPriceViewModel = [[KACargoAddViewModel alloc] init];
    KATransportPriceViewModel.KATitle = @"运输价格(元)";
    KATransportPriceViewModel.KADefault = @"请输入运输价格";
    [self.KAviewDataArray addObject:KATransportPriceViewModel];
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
                [MBProgressHUD KAshowReminderText:@"请输入地点"];
                return;
            }else if (i == 1){
                [MBProgressHUD KAshowReminderText:@"请输入客户名称"];
                return;
            }else if (i == 2){
                [MBProgressHUD KAshowReminderText:@"请输入货物名称"];
                return;
            }else if (i == 3){
                [MBProgressHUD KAshowReminderText:@"请输入运输价格"];
                return;
            }
        }
    }
    KACargoAddViewModel *KAplaceviewModel = self.KAviewDataArray[0];
    self.KAModel.KAPlace = KAplaceviewModel.KAContent;
    KACargoAddViewModel *KACustomerviewModel = self.KAviewDataArray[1];
    self.KAModel.KACustomerName = KACustomerviewModel.KAContent;
    KACargoAddViewModel *KACommodityviewModel = self.KAviewDataArray[2];
    self.KAModel.KACommodityName = KACommodityviewModel.KAContent;
    KACargoAddViewModel *KATransportPriceviewModel = self.KAviewDataArray[3];
    CGFloat KATransportPrice = [KATransportPriceviewModel.KAContent floatValue];
    self.KAModel.KATransportPrice = KATransportPrice;
    
    NSMutableDictionary *jsonDictionary = [[NSMutableDictionary alloc] initWithDictionary:(NSDictionary *)[self.KAModel yy_modelToJSONObject]];
    [jsonDictionary setObject:[[NSDate alloc] init] forKey:@"KADate"];
    AVUser *author = [AVUser currentUser];
    AVObject *diary;
        if (self.type == KACargoTypeWaitReceiving) {
            diary = [AVObject objectWithClassName:@"KACargoRecordWaitReceiving"];
        }else if (self.type == KACargoTypeWaitLoading){
           diary = [AVObject objectWithClassName:@"KACargoRecordWaitLoading"];
        }else if (self.type == KACargoTypeWaitDelivery){
            diary = [AVObject objectWithClassName:@"KACargoRecordWaitDelivery"];
        }else{
            diary = [AVObject objectWithClassName:@"KACargoRecordCompleted"];
        }
        for (NSString *key in jsonDictionary.allKeys) {
            [diary setObject:[jsonDictionary objectForKey:key]  forKey:key];
        }
        [diary setObject:author forKey:@"author"];
        [diary saveInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
            if (isSuccessful) {
                //创建成功后的动作
                [MBProgressHUD KAshowReminderText:NSLocalizedString(@"保存成功", nil)];
                [self.KAsuperVC.KAmainTable.mj_header beginRefreshing];
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
        if ([KAViewModel.KATitle hasPrefix:@"运输价格"]) {
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
#pragma mark - UIScrollViewDelegate
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    [self.view endEditing:YES];
}
#pragma mark - 关闭键盘
- (void)closeKeyboard:(UITapGestureRecognizer *)recognizer {
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (KACargoModel *)KAModel{
    if (!_KAModel) {
        _KAModel = [[KACargoModel alloc] init];
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
        [_KAsaveButton setTitle:@"添加" forState:UIControlStateNormal];
        [_KAsaveButton addTarget:self action:@selector(saveAction:) forControlEvents:UIControlEventTouchUpInside];
        [_KAsaveButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_KAsaveButton.titleLabel setFont:[UIFont systemFontOfSize:15]];
    }
    return _KAsaveButton;
}
@end
