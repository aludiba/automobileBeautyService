//
//  ALCargoAddViewController.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/2.
//  Copyright © 2020 hb. All rights reserved.
//

#import "ALCargoAddViewController.h"
#import "ALCargoRecordViewController.h"
#import "ALCargoModel.h"
#import "ALCargoAddViewModel.h"
#import "ALCargoEditableTableViewCell.h"

@interface ALCargoAddViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)ALCargoModel *ALModel;
@property(nonatomic, strong)UITableView *ALmainTable;//列表
@property(nonatomic, strong)UIButton *ALsaveButton;//保存按钮
@property(nonatomic, strong)NSMutableArray *ALviewDataArray;//页面数据
@end

@implementation ALCargoAddViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];
    if (self.type == ALCargoTypeWaitReceiving) {
        self.title = @"添加待接货";
    }else if (self.type == ALCargoTypeWaitLoading){
        self.title = @"添加待装载";
    }else if (self.type == ALCargoTypeWaitDelivery){
        self.title = @"添加待送达";
    }else{
        self.title = @"添加已完成";
    }
    [self ALSetContentView];
}
- (void)ALSetContentView{
    ALCargoAddViewModel *ALPlaceViewModel = [[ALCargoAddViewModel alloc] init];
    ALPlaceViewModel.ALTitle = @"地点";
    ALPlaceViewModel.ALDefault = @"请输入地点";
    [self.ALviewDataArray addObject:ALPlaceViewModel];
    
    ALCargoAddViewModel *ALCustomerViewModel = [[ALCargoAddViewModel alloc] init];
    ALCustomerViewModel.ALTitle = @"客户名称";
    ALCustomerViewModel.ALDefault = @"请输入客户名称";
    [self.ALviewDataArray addObject:ALCustomerViewModel];
    
    ALCargoAddViewModel *ALCommodityViewModel = [[ALCargoAddViewModel alloc] init];
    ALCommodityViewModel.ALTitle = @"货物名称";
    ALCommodityViewModel.ALDefault = @"请输入货物名称";
    [self.ALviewDataArray addObject:ALCommodityViewModel];
    
    ALCargoAddViewModel *ALTransportPriceViewModel = [[ALCargoAddViewModel alloc] init];
    ALTransportPriceViewModel.ALTitle = @"运输价格(元)";
    ALTransportPriceViewModel.ALDefault = @"请输入运输价格";
    [self.ALviewDataArray addObject:ALTransportPriceViewModel];
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
                [MBProgressHUD ALshowReminderText:@"请输入地点"];
                return;
            }else if (i == 1){
                [MBProgressHUD ALshowReminderText:@"请输入客户名称"];
                return;
            }else if (i == 2){
                [MBProgressHUD ALshowReminderText:@"请输入货物名称"];
                return;
            }else if (i == 3){
                [MBProgressHUD ALshowReminderText:@"请输入运输价格"];
                return;
            }
        }
    }
    ALCargoAddViewModel *ALplaceviewModel = self.ALviewDataArray[0];
    self.ALModel.ALPlace = ALplaceviewModel.ALContent;
    ALCargoAddViewModel *ALCustomerviewModel = self.ALviewDataArray[1];
    self.ALModel.ALCustomerName = ALCustomerviewModel.ALContent;
    ALCargoAddViewModel *ALCommodityviewModel = self.ALviewDataArray[2];
    self.ALModel.ALCommodityName = ALCommodityviewModel.ALContent;
    ALCargoAddViewModel *ALTransportPriceviewModel = self.ALviewDataArray[3];
    CGFloat ALTransportPrice = [ALTransportPriceviewModel.ALContent floatValue];
    self.ALModel.ALTransportPrice = ALTransportPrice;
    
    NSMutableDictionary *jsonDictionary = [[NSMutableDictionary alloc] initWithDictionary:(NSDictionary *)[self.ALModel yy_modelToJSONObject]];
    [jsonDictionary setObject:[[NSDate alloc] init] forKey:@"ALDate"];
    AVUser *author = [AVUser currentUser];
    AVObject *diary;
        if (self.type == ALCargoTypeWaitReceiving) {
            diary = [AVObject objectWithClassName:@"ALCargoRecordWaitReceiving"];
        }else if (self.type == ALCargoTypeWaitLoading){
           diary = [AVObject objectWithClassName:@"ALCargoRecordWaitLoading"];
        }else if (self.type == ALCargoTypeWaitDelivery){
            diary = [AVObject objectWithClassName:@"ALCargoRecordWaitDelivery"];
        }else{
            diary = [AVObject objectWithClassName:@"ALCargoRecordCompleted"];
        }
        for (NSString *key in jsonDictionary.allKeys) {
            [diary setObject:[jsonDictionary objectForKey:key]  forKey:key];
        }
        [diary setObject:author forKey:@"author"];
        [diary saveInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
            if (isSuccessful) {
                //创建成功后的动作
                [MBProgressHUD ALshowReminderText:NSLocalizedString(@"保存成功", nil)];
                [self.ALsuperVC.ALmainTable.mj_header beginRefreshing];
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
        if ([ALViewModel.ALTitle hasPrefix:@"运输价格"]) {
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
#pragma mark - UIScrollViewDelegate
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    [self.view endEditing:YES];
}
#pragma mark - 关闭键盘
- (void)closeKeyboard:(UITapGestureRecognizer *)recognizer {
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (ALCargoModel *)ALModel{
    if (!_ALModel) {
        _ALModel = [[ALCargoModel alloc] init];
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
        _ALsaveButton.backgroundColor = [UIColor systemGreenColor];
        _ALsaveButton.layer.cornerRadius = 4.0f;
        _ALsaveButton.layer.masksToBounds = YES;
        _ALsaveButton.layer.borderColor = ALH_Color(100, 141, 225, 1).CGColor;
        _ALsaveButton.layer.borderWidth = 0.5f;
        [_ALsaveButton setTitle:@"添加" forState:UIControlStateNormal];
        [_ALsaveButton addTarget:self action:@selector(saveAction:) forControlEvents:UIControlEventTouchUpInside];
        [_ALsaveButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_ALsaveButton.titleLabel setFont:[UIFont systemFontOfSize:15]];
    }
    return _ALsaveButton;
}
@end
