//
//  SOsodePlanViewController.m
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "SOsodePlanViewController.h"
#import "SOClockViewController.h"
#import "SOsodePlanModel.h"
#import "SOsodePlanSaveModel.h"
#import "SOsodePlanEditTableViewCell.h"
#import "SOsodePlanDateTableViewCell.h"
#import "SOsodePlanSaveTableViewCell.h"

@interface SOsodePlanViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSMutableArray *SOviewDataArray;
@property(nonatomic, strong)UITableView *SOmainTable;
@end

@implementation SOsodePlanViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"戒苏打水计划", nil);
    [self SOsetContentView];
}
- (void)SOsetContentView{
    SOsodePlanModel *sodaAgesModel = [[SOsodePlanModel alloc] init];
    sodaAgesModel.SOtype = 0;
    sodaAgesModel.SOtitle = NSLocalizedString(@"苏打水龄", nil);
    sodaAgesModel.SOunit = NSLocalizedString(@"年", nil);
    if (self.objectId.length) {
        sodaAgesModel.SOcontent = [NSString stringWithFormat:@"%ld",self.saveModel.SOsodeAges];
    }
    sodaAgesModel.SOdefaultString = NSLocalizedString(@"请输入苏打水龄", nil);
    [self.SOviewDataArray addObject:sodaAgesModel];
    
    SOsodePlanModel *timeDrinkModel = [[SOsodePlanModel alloc] init];
    timeDrinkModel.SOtype = 1;
    timeDrinkModel.SOtitle = NSLocalizedString(@"戒苏打水时间", nil);
    if (self.objectId.length) {
        timeDrinkModel.SOcontent = [SOUIUtilities SOformattedTimeStringWithDate:self.saveModel.SOtimeGiveSodeDate format:@"yyyy-MM-dd"];
    }
    timeDrinkModel.SOdefaultString = NSLocalizedString(@"请选择戒苏打水时间", nil);
    [self.SOviewDataArray addObject:timeDrinkModel];
    
    SOsodePlanModel *SOsodeEveryDayModel = [[SOsodePlanModel alloc] init];
    SOsodeEveryDayModel.SOtype = 0;
    SOsodeEveryDayModel.SOtitle = NSLocalizedString(@"每天苏打水量", nil);
    if (self.objectId.length) {
        SOsodeEveryDayModel.SOcontent = [NSString stringWithFormat:@"%ld",self.saveModel.SOsodeEveryDay];
    }
    SOsodeEveryDayModel.SOunit = NSLocalizedString(@"瓶", nil);
    SOsodeEveryDayModel.SOdefaultString = NSLocalizedString(@"请输入每天苏打水量", nil);
    [self.SOviewDataArray addObject:SOsodeEveryDayModel];
    
    SOsodePlanModel *SOsodePricesModel = [[SOsodePlanModel alloc] init];
    SOsodePricesModel.SOtype = 0;
    SOsodePricesModel.SOtitle = NSLocalizedString(@"苏打水价格", nil);
    if (self.objectId.length) {
        SOsodePricesModel.SOcontent = [NSString stringWithFormat:@"%ld",self.saveModel.SOsodePrices];
    }
    SOsodePricesModel.SOunit = NSLocalizedString(@"元/瓶", nil);
    SOsodePricesModel.SOdefaultString = NSLocalizedString(@"请输入苏打水价格", nil);
    [self.SOviewDataArray addObject:SOsodePricesModel];
    
    
    SOsodePlanModel *saveModel = [[SOsodePlanModel alloc] init];
    saveModel.SOtype = 2;
    [self.SOviewDataArray addObject:saveModel];
    
    [self.SOmainTable reloadData];
}
- (void)SOcloseEdit{
    [self.view endEditing:YES];
}
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    [self SOcloseEdit];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.SOviewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    SOsodePlanModel *viewModel = self.SOviewDataArray[indexPath.row];
    if (viewModel.SOtype == 0) {
        SOsodePlanEditTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"SOsodePlanEditTableViewCell" forIndexPath:indexPath];
        cell.model = viewModel;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }else if (viewModel.SOtype == 1){
        SOsodePlanDateTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"SOsodePlanDateTableViewCell" forIndexPath:indexPath];
        cell.model = viewModel;
        __weak typeof(self) weakSelf = self;
        cell.SOsodePlanDateB = ^(SOsodePlanDateTableViewCell * _Nonnull cell) {
            [weakSelf.SOmainTable reloadData];
        };
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }else{
        SOsodePlanSaveTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"SOsodePlanSaveTableViewCell" forIndexPath:indexPath];
        __weak typeof(self) weakSelf = self;
        cell.SOsodePlanSaveB = ^(SOsodePlanSaveTableViewCell * _Nonnull cell) {
            [weakSelf SOcloseEdit];
            [weakSelf SOsave];
        };
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }
}
- (void)SOsave{
    for (int i = 0; i < self.SOviewDataArray.count; i++) {
        SOsodePlanModel *model = self.SOviewDataArray[i];
        if (!model.SOcontent.length && model.SOtype != 2) {
            [MBProgressHUD SOshowReminderText:model.SOdefaultString];
            return;
        }else{
            switch (i) {
                case 0:
                    self.saveModel.SOsodeAges = [model.SOcontent integerValue];
                    break;
                case 2:
                self.saveModel.SOsodeEveryDay = [model.SOcontent integerValue];
                break;
                case 3:
                self.saveModel.SOsodePrices = [model.SOcontent integerValue];
                break;
                default:
                    break;
            }
        }
    }
    NSMutableDictionary *jsonDictionary = [[NSMutableDictionary alloc] initWithDictionary:(NSDictionary *)[self.saveModel yy_modelToJSONObject]];
    [jsonDictionary setObject:[[NSDate alloc] init] forKey:@"SOsaveDate"];
    if (!self.saveModel.SOclockInSAndNumberB.count) {
    NSMutableArray *SOclockInSAndNumberB = [[NSMutableArray alloc] init];
    NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
    NSString *clockInDateString = @"2019-01-01";
    [dic setObject:clockInDateString forKey:@"clockInDate"];
    [dic setObject:[NSNumber numberWithInteger:0] forKey:@"numberbottleDrink"];//当天喝苏打水瓶数
    [SOclockInSAndNumberB addObject:dic];
    [jsonDictionary setObject:SOclockInSAndNumberB forKey:@"SOclockInSAndNumberB"];
    }
    SOsodePlanModel *model = self.SOviewDataArray[1];
    NSString *dateString = model.SOcontent;
    NSDate *date = [SOUIUtilities SOdateFromString:dateString formate:@"yyyy-MM-dd"];
    [jsonDictionary setObject:date forKey:@"SOtimeGiveSodeDate"];
    NSLog(@"jsonDictionary:%@",jsonDictionary);
    if (self.objectId.length) {
        BmobObject *diary = [BmobObject objectWithoutDataWithClassName:@"SOsodePlan" objectId:self.objectId];
        [diary saveAllWithDictionary:jsonDictionary];
        BmobUser *author = [BmobUser currentUser];
        [diary setObject:author forKey:@"author"];
        [diary updateInBackgroundWithResultBlock:^(BOOL isSuccessful, NSError *error) {
            if (isSuccessful) {
                //创建成功后的动作
                [MBProgressHUD SOshowReminderText:NSLocalizedString(@"更新成功", nil)];
                [self.superVC loadData];
                [self.navigationController popViewControllerAnimated:YES];
            } else if (error){
                //发生错误后的动作
                NSLog(@"error:%@",error);
                [MBProgressHUD SOshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            } else {
                [MBProgressHUD SOshowReminderText:NSLocalizedString(@"请稍后重试", nil)];

            }
        }];
    }else{
    BmobObject *diary = [BmobObject objectWithClassName:@"SOsodePlan"];
    [diary saveAllWithDictionary:jsonDictionary];
    BmobUser *author = [BmobUser currentUser];
    [diary setObject:author forKey:@"author"];
    [diary saveInBackgroundWithResultBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            //创建成功后的动作
            [MBProgressHUD SOshowReminderText:NSLocalizedString(@"保存成功", nil)];
            [self.superVC loadData];
            [self.navigationController popViewControllerAnimated:YES];
        } else if (error){
            //发生错误后的动作
            NSLog(@"error:%@",error);
            [MBProgressHUD SOshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        } else {
            [MBProgressHUD SOshowReminderText:NSLocalizedString(@"请稍后重试", nil)];

        }
    }];
    }
}
#pragma mark - 属性懒加载
- (SOsodePlanSaveModel *)saveModel{
    if (!_saveModel) {
        _saveModel = [[SOsodePlanSaveModel alloc] init];
        _saveModel.SOcumulativeNubDays = 0;//累计天数
        _saveModel.SOaccumulativeBot = 0;//累计少喝瓶数
        _saveModel.SOcumulativeAmount = 0;//累计少花钱数
    }
    return _saveModel;
}
- (NSMutableArray *)SOviewDataArray{
    if (!_SOviewDataArray) {
        _SOviewDataArray = [[NSMutableArray alloc] init];
    }
    return _SOviewDataArray;
}
- (UITableView *)SOmainTable{
    if (!_SOmainTable) {
        _SOmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _SOmainTable.backgroundColor = SOH_Color(244, 245, 246, 1);
        _SOmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _SOmainTable.delegate = self;
        _SOmainTable.dataSource = self;
        _SOmainTable.rowHeight = UITableViewAutomaticDimension;
        _SOmainTable.estimatedRowHeight = 55.0f;
        _SOmainTable.tableHeaderView = [[UIView alloc] init];
        _SOmainTable.tableFooterView = [[UIView alloc] init];
        [_SOmainTable registerClass:[SOsodePlanEditTableViewCell class] forCellReuseIdentifier:@"SOsodePlanEditTableViewCell"];
        [_SOmainTable registerClass:[SOsodePlanDateTableViewCell class] forCellReuseIdentifier:@"SOsodePlanDateTableViewCell"];
        [_SOmainTable registerClass:[SOsodePlanSaveTableViewCell class] forCellReuseIdentifier:@"SOsodePlanSaveTableViewCell"];

        [self.view addSubview:_SOmainTable];
        [_SOmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.view);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view);
        }];
        UITapGestureRecognizer *tapGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(SOcloseEdit)];
        [_SOmainTable addGestureRecognizer:tapGes];
        [self.view addGestureRecognizer:tapGes];
    }
    return _SOmainTable;
}
@end
