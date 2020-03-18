//
//  EAsodePlanViewController.m
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "EAsodePlanViewController.h"
#import "EAClockViewController.h"
#import "EAsodePlanModel.h"
#import "EAsodePlanSaveModel.h"
#import "EAsodePlanEditTableViewCell.h"
#import "EAsodePlanDateTableViewCell.h"
#import "EAsodePlanSaveTableViewCell.h"

@interface EAsodePlanViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSMutableArray *EAviewDataArray;
@property(nonatomic, strong)UITableView *EAmainTable;
@end

@implementation EAsodePlanViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"戒苏打水计划", nil);
    [self EAsetContentView];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}
- (void)EAsetContentView{
    EAsodePlanModel *sodaAgesModel = [[EAsodePlanModel alloc] init];
    sodaAgesModel.EAtype = 0;
    sodaAgesModel.EAtitle = NSLocalizedString(@"苏打水龄", nil);
    sodaAgesModel.EAunit = NSLocalizedString(@"年", nil);
    if (self.objectId.length) {
        sodaAgesModel.EAcontent = [NSString stringWithFormat:@"%ld",self.saveModel.EAsodeAges];
    }
    sodaAgesModel.EAdefaultString = NSLocalizedString(@"请输入苏打水龄", nil);
    [self.EAviewDataArray addObject:sodaAgesModel];
    
    EAsodePlanModel *timeDrinkModel = [[EAsodePlanModel alloc] init];
    timeDrinkModel.EAtype = 1;
    timeDrinkModel.EAtitle = NSLocalizedString(@"戒苏打水时间", nil);
    if (self.objectId.length) {
        timeDrinkModel.EAcontent = [EAUIUtilities EAformattedTimeStringWithDate:self.saveModel.EAtimeGiveSodeDate format:@"yyyy-MM-dd"];
    }
    timeDrinkModel.EAdefaultString = NSLocalizedString(@"请选择戒苏打水时间", nil);
    [self.EAviewDataArray addObject:timeDrinkModel];
    
    EAsodePlanModel *EAsodeEveryDayModel = [[EAsodePlanModel alloc] init];
    EAsodeEveryDayModel.EAtype = 0;
    EAsodeEveryDayModel.EAtitle = NSLocalizedString(@"每天苏打水量", nil);
    if (self.objectId.length) {
        EAsodeEveryDayModel.EAcontent = [NSString stringWithFormat:@"%ld",self.saveModel.EAsodeEveryDay];
    }
    EAsodeEveryDayModel.EAunit = NSLocalizedString(@"瓶", nil);
    EAsodeEveryDayModel.EAdefaultString = NSLocalizedString(@"请输入每天苏打水量", nil);
    [self.EAviewDataArray addObject:EAsodeEveryDayModel];
    
    EAsodePlanModel *EAsodePricesModel = [[EAsodePlanModel alloc] init];
    EAsodePricesModel.EAtype = 0;
    EAsodePricesModel.EAtitle = NSLocalizedString(@"苏打水价格", nil);
    if (self.objectId.length) {
        EAsodePricesModel.EAcontent = [NSString stringWithFormat:@"%ld",self.saveModel.EAsodePrices];
    }
    EAsodePricesModel.EAunit = NSLocalizedString(@"元/瓶", nil);
    EAsodePricesModel.EAdefaultString = NSLocalizedString(@"请输入苏打水价格", nil);
    [self.EAviewDataArray addObject:EAsodePricesModel];
    
    
    EAsodePlanModel *saveModel = [[EAsodePlanModel alloc] init];
    saveModel.EAtype = 2;
    [self.EAviewDataArray addObject:saveModel];
    
    [self.EAmainTable reloadData];
}
- (void)EAcloseEdit{
    [self.view endEditing:YES];
}
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    [self EAcloseEdit];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.EAviewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    EAsodePlanModel *viewModel = self.EAviewDataArray[indexPath.row];
    if (viewModel.EAtype == 0) {
        EAsodePlanEditTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"EAsodePlanEditTableViewCell" forIndexPath:indexPath];
        cell.model = viewModel;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }else if (viewModel.EAtype == 1){
        EAsodePlanDateTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"EAsodePlanDateTableViewCell" forIndexPath:indexPath];
        cell.model = viewModel;
        __weak typeof(self) weakSelf = self;
        cell.EAsodePlanDateB = ^(EAsodePlanDateTableViewCell * _Nonnull cell) {
            [weakSelf.EAmainTable reloadData];
        };
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }else{
        EAsodePlanSaveTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"EAsodePlanSaveTableViewCell" forIndexPath:indexPath];
        __weak typeof(self) weakSelf = self;
        cell.EAsodePlanSaveB = ^(EAsodePlanSaveTableViewCell * _Nonnull cell) {
            [weakSelf EAcloseEdit];
            [weakSelf EAsave];
        };
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }
}
- (void)EAsave{
    for (int i = 0; i < self.EAviewDataArray.count; i++) {
        EAsodePlanModel *model = self.EAviewDataArray[i];
        if (!model.EAcontent.length && model.EAtype != 2) {
            [MBProgressHUD EAshowReminderText:model.EAdefaultString];
            return;
        }else{
            switch (i) {
                case 0:
                    self.saveModel.EAsodeAges = [model.EAcontent integerValue];
                    break;
                case 2:
                self.saveModel.EAsodeEveryDay = [model.EAcontent integerValue];
                break;
                case 3:
                self.saveModel.EAsodePrices = [model.EAcontent integerValue];
                break;
                default:
                    break;
            }
        }
    }
    NSMutableDictionary *jsonDictionary = [[NSMutableDictionary alloc] initWithDictionary:(NSDictionary *)[self.saveModel yy_modelToJSONObject]];
    [jsonDictionary setObject:[[NSDate alloc] init] forKey:@"EAsaveDate"];
    if (!self.saveModel.EAclockInSAndNumberB.count) {
    NSMutableArray *EAclockInSAndNumberB = [[NSMutableArray alloc] init];
    NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
    NSString *clockInDateString = @"2019-01-01";
    [dic setObject:clockInDateString forKey:@"clockInDate"];
    [dic setObject:[NSNumber numberWithInteger:0] forKey:@"numberbottleDrink"];//当天喝苏打水瓶数
    [EAclockInSAndNumberB addObject:dic];
    [jsonDictionary setObject:EAclockInSAndNumberB forKey:@"EAclockInSAndNumberB"];
    }
    EAsodePlanModel *model = self.EAviewDataArray[1];
    NSString *dateString = model.EAcontent;
    NSDate *date = [EAUIUtilities EAdateFromString:dateString formate:@"yyyy-MM-dd"];
    [jsonDictionary setObject:date forKey:@"EAtimeGiveSodeDate"];
    NSLog(@"jsonDictionary:%@",jsonDictionary);
    if (self.objectId.length) {
        AVObject *diary = [AVObject objectWithClassName:@"EAsodePlan" objectId:self.objectId];
        for (NSString *key in jsonDictionary.allKeys) {
            [diary setObject:[jsonDictionary objectForKey:key]  forKey:key];
        }
        AVUser *author = [AVUser currentUser];
        [diary setObject:author forKey:@"author"];
        [diary saveInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
            if (isSuccessful) {
                //创建成功后的动作
                [MBProgressHUD EAshowReminderText:NSLocalizedString(@"更新成功", nil)];
                [self.superVC loadData];
                [self.navigationController popViewControllerAnimated:YES];
            } else if (error){
                //发生错误后的动作
                NSLog(@"error:%@",error);
                [MBProgressHUD EAshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            } else {
                [MBProgressHUD EAshowReminderText:NSLocalizedString(@"请稍后重试", nil)];

            }
        }];
    }else{
    AVObject *diary = [AVObject objectWithClassName:@"EAsodePlan"];
    for (NSString *key in jsonDictionary.allKeys) {
        [diary setObject:[jsonDictionary objectForKey:key]  forKey:key];
    }
    AVUser *author = [AVUser currentUser];
    [diary setObject:author forKey:@"author"];
    [diary saveInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            //创建成功后的动作
            [MBProgressHUD EAshowReminderText:NSLocalizedString(@"保存成功", nil)];
            [self.superVC loadData];
            [self.navigationController popViewControllerAnimated:YES];
        } else if (error){
            //发生错误后的动作
            NSLog(@"error:%@",error);
            [MBProgressHUD EAshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        } else {
            [MBProgressHUD EAshowReminderText:NSLocalizedString(@"请稍后重试", nil)];

        }
    }];
    }
}
#pragma mark - 属性懒加载
- (EAsodePlanSaveModel *)saveModel{
    if (!_saveModel) {
        _saveModel = [[EAsodePlanSaveModel alloc] init];
        _saveModel.EAcumulativeNubDays = 0;//累计天数
        _saveModel.EAaccumulativeBot = 0;//累计少喝瓶数
        _saveModel.EAcumulativeAmount = 0;//累计少花钱数
    }
    return _saveModel;
}
- (NSMutableArray *)EAviewDataArray{
    if (!_EAviewDataArray) {
        _EAviewDataArray = [[NSMutableArray alloc] init];
    }
    return _EAviewDataArray;
}
- (UITableView *)EAmainTable{
    if (!_EAmainTable) {
        _EAmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _EAmainTable.backgroundColor = EAH_Color(244, 245, 246, 1);
        _EAmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _EAmainTable.delegate = self;
        _EAmainTable.dataSource = self;
        _EAmainTable.rowHeight = UITableViewAutomaticDimension;
        _EAmainTable.estimatedRowHeight = 55.0f;
        _EAmainTable.tableHeaderView = [[UIView alloc] init];
        _EAmainTable.tableFooterView = [[UIView alloc] init];
        [_EAmainTable registerClass:[EAsodePlanEditTableViewCell class] forCellReuseIdentifier:@"EAsodePlanEditTableViewCell"];
        [_EAmainTable registerClass:[EAsodePlanDateTableViewCell class] forCellReuseIdentifier:@"EAsodePlanDateTableViewCell"];
        [_EAmainTable registerClass:[EAsodePlanSaveTableViewCell class] forCellReuseIdentifier:@"EAsodePlanSaveTableViewCell"];

        [self.view addSubview:_EAmainTable];
        [_EAmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.view);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view);
        }];
        UITapGestureRecognizer *tapGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(EAcloseEdit)];
        [_EAmainTable addGestureRecognizer:tapGes];
        [self.view addGestureRecognizer:tapGes];
    }
    return _EAmainTable;
}
@end
