//
//  AHsodePlanViewController.m
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AHsodePlanViewController.h"
#import "AHClockViewController.h"
#import "AHsodePlanModel.h"
#import "AHsodePlanSaveModel.h"
#import "AHsodePlanEditTableViewCell.h"
#import "AHsodePlanDateTableViewCell.h"
#import "AHsodePlanSaveTableViewCell.h"

@interface AHsodePlanViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSMutableArray *AHviewDataArray;
@property(nonatomic, strong)UITableView *AHmainTable;
@end

@implementation AHsodePlanViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"戒苏打水计划", nil);
    self.view.backgroundColor = [UIColor whiteColor];
    [self AHsetContentView];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}
- (void)AHsetContentView{
    AHsodePlanModel *sodaAgesModel = [[AHsodePlanModel alloc] init];
    sodaAgesModel.AHtype = 0;
    sodaAgesModel.AHtitle = NSLocalizedString(@"苏打水龄", nil);
    sodaAgesModel.AHunit = NSLocalizedString(@"年", nil);
    if (self.AHobjectId.length) {
        sodaAgesModel.AHcontent = [NSString stringWithFormat:@"%ld",self.AHsaveModel.AHsodeAges];
    }
    sodaAgesModel.AHdefaultString = NSLocalizedString(@"请输入苏打水龄", nil);
    [self.AHviewDataArray addObject:sodaAgesModel];
    
    AHsodePlanModel *timeDrinkModel = [[AHsodePlanModel alloc] init];
    timeDrinkModel.AHtype = 1;
    timeDrinkModel.AHtitle = NSLocalizedString(@"戒苏打水时间", nil);
    if (self.AHobjectId.length) {
        timeDrinkModel.AHcontent = [AHUIUtilities AHformattedTimeStringWithDate:self.AHsaveModel.AHtimeGiveSodeDate format:@"yyyy-MM-dd"];
    }
    timeDrinkModel.AHdefaultString = NSLocalizedString(@"请选择戒苏打水时间", nil);
    [self.AHviewDataArray addObject:timeDrinkModel];
    
    AHsodePlanModel *AHsodeEveryDayModel = [[AHsodePlanModel alloc] init];
    AHsodeEveryDayModel.AHtype = 0;
    AHsodeEveryDayModel.AHtitle = NSLocalizedString(@"每天苏打水量", nil);
    if (self.AHobjectId.length) {
        AHsodeEveryDayModel.AHcontent = [NSString stringWithFormat:@"%ld",self.AHsaveModel.AHsodeEveryDay];
    }
    AHsodeEveryDayModel.AHunit = NSLocalizedString(@"瓶", nil);
    AHsodeEveryDayModel.AHdefaultString = NSLocalizedString(@"请输入每天苏打水量", nil);
    [self.AHviewDataArray addObject:AHsodeEveryDayModel];
    
    AHsodePlanModel *AHsodePricesModel = [[AHsodePlanModel alloc] init];
    AHsodePricesModel.AHtype = 0;
    AHsodePricesModel.AHtitle = NSLocalizedString(@"苏打水价格", nil);
    if (self.AHobjectId.length) {
        AHsodePricesModel.AHcontent = [NSString stringWithFormat:@"%ld",self.AHsaveModel.AHsodePrices];
    }
    AHsodePricesModel.AHunit = NSLocalizedString(@"元/瓶", nil);
    AHsodePricesModel.AHdefaultString = NSLocalizedString(@"请输入苏打水价格", nil);
    [self.AHviewDataArray addObject:AHsodePricesModel];
    
    
    AHsodePlanModel *saveModel = [[AHsodePlanModel alloc] init];
    saveModel.AHtype = 2;
    [self.AHviewDataArray addObject:saveModel];
    
    [self.AHmainTable reloadData];
}
- (void)AHcloseEdit{
    [self.view endEditing:YES];
}
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    [self AHcloseEdit];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.AHviewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    AHsodePlanModel *viewModel = self.AHviewDataArray[indexPath.row];
    if (viewModel.AHtype == 0) {
        AHsodePlanEditTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"AHsodePlanEditTableViewCell" forIndexPath:indexPath];
        cell.AHmodel = viewModel;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }else if (viewModel.AHtype == 1){
        AHsodePlanDateTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"AHsodePlanDateTableViewCell" forIndexPath:indexPath];
        cell.AHmodel = viewModel;
        __weak typeof(self) weakSelf = self;
        cell.AHsodePlanDateB = ^(AHsodePlanDateTableViewCell * _Nonnull cell) {
            [weakSelf.AHmainTable reloadData];
        };
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }else{
        AHsodePlanSaveTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"AHsodePlanSaveTableViewCell" forIndexPath:indexPath];
        __weak typeof(self) weakSelf = self;
        cell.AHsodePlanSaveB = ^(AHsodePlanSaveTableViewCell * _Nonnull cell) {
            [weakSelf AHcloseEdit];
            [weakSelf AHsave];
        };
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }
}
- (void)AHsave{
    for (int i = 0; i < self.AHviewDataArray.count; i++) {
        AHsodePlanModel *model = self.AHviewDataArray[i];
        if (!model.AHcontent.length && model.AHtype != 2) {
            [MBProgressHUD AHshowReminderText:model.AHdefaultString];
            return;
        }else{
            switch (i) {
                case 0:
                    self.AHsaveModel.AHsodeAges = [model.AHcontent integerValue];
                    break;
                case 2:
                self.AHsaveModel.AHsodeEveryDay = [model.AHcontent integerValue];
                break;
                case 3:
                self.AHsaveModel.AHsodePrices = [model.AHcontent integerValue];
                break;
                default:
                    break;
            }
        }
    }
    NSMutableDictionary *jsonDictionary = [[NSMutableDictionary alloc] initWithDictionary:(NSDictionary *)[self.AHsaveModel yy_modelToJSONObject]];
    [jsonDictionary setObject:[[NSDate alloc] init] forKey:@"AHsaveDate"];
    if (!self.AHsaveModel.AHclockInSAndNumberB.count) {
    NSMutableArray *AHclockInSAndNumberB = [[NSMutableArray alloc] init];
    NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
    NSString *clockInDateString = @"2019-01-01";
    [dic setObject:clockInDateString forKey:@"clockInDate"];
    [dic setObject:[NSNumber numberWithInteger:0] forKey:@"numberbottleDrink"];//当天喝苏打水瓶数
    [AHclockInSAndNumberB addObject:dic];
    [jsonDictionary setObject:AHclockInSAndNumberB forKey:@"AHclockInSAndNumberB"];
    }
    AHsodePlanModel *model = self.AHviewDataArray[1];
    NSString *dateString = model.AHcontent;
    NSDate *date = [AHUIUtilities AHdateFromString:dateString formate:@"yyyy-MM-dd"];
    [jsonDictionary setObject:date forKey:@"AHtimeGiveSodeDate"];
    NSLog(@"jsonDictionary:%@",jsonDictionary);
    if (self.AHobjectId.length) {
        AVObject *diary = [AVObject objectWithClassName:@"AHsodePlan" objectId:self.AHobjectId];
        for (NSString *key in jsonDictionary.allKeys) {
            [diary setObject:[jsonDictionary objectForKey:key]  forKey:key];
        }
        AVUser *author = [AVUser currentUser];
        [diary setObject:author forKey:@"author"];
        [diary saveInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
            if (isSuccessful) {
                //创建成功后的动作
                [MBProgressHUD AHshowReminderText:NSLocalizedString(@"更新成功", nil)];
                [self.AHsuperVC AHloadData];
                [self.navigationController popViewControllerAnimated:YES];
            } else if (error){
                //发生错误后的动作
                NSLog(@"error:%@",error);
                [MBProgressHUD AHshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            } else {
                [MBProgressHUD AHshowReminderText:NSLocalizedString(@"请稍后重试", nil)];

            }
        }];
    }else{
    AVObject *diary = [AVObject objectWithClassName:@"AHsodePlan"];
    for (NSString *key in jsonDictionary.allKeys) {
        [diary setObject:[jsonDictionary objectForKey:key]  forKey:key];
    }
    AVUser *author = [AVUser currentUser];
    [diary setObject:author forKey:@"author"];
    [diary saveInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            //创建成功后的动作
            [MBProgressHUD AHshowReminderText:NSLocalizedString(@"保存成功", nil)];
            [self.AHsuperVC AHloadData];
            [self.navigationController popViewControllerAnimated:YES];
        } else if (error){
            //发生错误后的动作
            NSLog(@"error:%@",error);
            [MBProgressHUD AHshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        } else {
            [MBProgressHUD AHshowReminderText:NSLocalizedString(@"请稍后重试", nil)];

        }
    }];
    }
}
#pragma mark - 属性懒加载
- (AHsodePlanSaveModel *)AHsaveModel{
    if (!_AHsaveModel) {
        _AHsaveModel = [[AHsodePlanSaveModel alloc] init];
        _AHsaveModel.AHcumulativeNubDays = 0;//累计天数
        _AHsaveModel.AHaccumulativeBot = 0;//累计少喝瓶数
        _AHsaveModel.AHcumulativeAmount = 0;//累计少花钱数
    }
    return _AHsaveModel;
}
- (NSMutableArray *)AHviewDataArray{
    if (!_AHviewDataArray) {
        _AHviewDataArray = [[NSMutableArray alloc] init];
    }
    return _AHviewDataArray;
}
- (UITableView *)AHmainTable{
    if (!_AHmainTable) {
        _AHmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _AHmainTable.backgroundColor = [UIColor colorWithRed:0 green:0 blue:1 alpha:0.5];
        _AHmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _AHmainTable.delegate = self;
        _AHmainTable.dataSource = self;
        _AHmainTable.rowHeight = UITableViewAutomaticDimension;
        _AHmainTable.estimatedRowHeight = 55.0f;
        _AHmainTable.tableHeaderView = [[UIView alloc] init];
        _AHmainTable.tableFooterView = [[UIView alloc] init];
        [_AHmainTable registerClass:[AHsodePlanEditTableViewCell class] forCellReuseIdentifier:@"AHsodePlanEditTableViewCell"];
        [_AHmainTable registerClass:[AHsodePlanDateTableViewCell class] forCellReuseIdentifier:@"AHsodePlanDateTableViewCell"];
        [_AHmainTable registerClass:[AHsodePlanSaveTableViewCell class] forCellReuseIdentifier:@"AHsodePlanSaveTableViewCell"];

        [self.view addSubview:_AHmainTable];
        [_AHmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.view);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view);
        }];
        UITapGestureRecognizer *tapGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(AHcloseEdit)];
        [_AHmainTable addGestureRecognizer:tapGes];
        [self.view addGestureRecognizer:tapGes];
    }
    return _AHmainTable;
}
@end
