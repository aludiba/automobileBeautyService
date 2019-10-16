//
//  QSsmokingPlanViewController.m
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "QSsmokingPlanViewController.h"
#import "QSClockViewController.h"
#import "QSsmokingPlanModel.h"
#import "QSsmokingPlanSaveModel.h"
#import "QSsmokingPlanEditTableViewCell.h"
#import "QSsmokingPlanDateTableViewCell.h"
#import "QSsmokingPlanSaveTableViewCell.h"

@interface QSsmokingPlanViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSMutableArray *QSviewDataArray;
@property(nonatomic, strong)UITableView *QSmainTable;
@end

@implementation QSsmokingPlanViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"戒烟计划", nil);
    [self QSsetContentView];
}
- (void)QSsetContentView{
    QSsmokingPlanModel *smokeAgesModel = [[QSsmokingPlanModel alloc] init];
    smokeAgesModel.QStype = 0;
    smokeAgesModel.QStitle = NSLocalizedString(@"烟龄", nil);
    smokeAgesModel.QSunit = NSLocalizedString(@"年", nil);
    if (self.objectId.length) {
        smokeAgesModel.QScontent = [NSString stringWithFormat:@"%ld",self.saveModel.QSsmokeAges];
    }
    smokeAgesModel.QSdefaultString = NSLocalizedString(@"请输入烟龄", nil);
    [self.QSviewDataArray addObject:smokeAgesModel];
    
    QSsmokingPlanModel *timeDrinkModel = [[QSsmokingPlanModel alloc] init];
    timeDrinkModel.QStype = 1;
    timeDrinkModel.QStitle = NSLocalizedString(@"戒烟时间", nil);
    if (self.objectId.length) {
        timeDrinkModel.QScontent = [QSUIUtilities QSformattedTimeStringWithDate:self.saveModel.QStimeGiveSmokeDate format:@"yyyy-MM-dd"];
    }
    timeDrinkModel.QSdefaultString = NSLocalizedString(@"请选择戒烟时间", nil);
    [self.QSviewDataArray addObject:timeDrinkModel];
    
    QSsmokingPlanModel *QSsmokingEveryDayModel = [[QSsmokingPlanModel alloc] init];
    QSsmokingEveryDayModel.QStype = 0;
    QSsmokingEveryDayModel.QStitle = NSLocalizedString(@"每天烟量", nil);
    if (self.objectId.length) {
        QSsmokingEveryDayModel.QScontent = [NSString stringWithFormat:@"%ld",self.saveModel.QSsmokingEveryDay];
    }
    QSsmokingEveryDayModel.QSunit = NSLocalizedString(@"包", nil);
    QSsmokingEveryDayModel.QSdefaultString = NSLocalizedString(@"请输入每天烟量", nil);
    [self.QSviewDataArray addObject:QSsmokingEveryDayModel];
    
    QSsmokingPlanModel *QSsmokePricesModel = [[QSsmokingPlanModel alloc] init];
    QSsmokePricesModel.QStype = 0;
    QSsmokePricesModel.QStitle = NSLocalizedString(@"烟价格", nil);
    if (self.objectId.length) {
        QSsmokePricesModel.QScontent = [NSString stringWithFormat:@"%ld",self.saveModel.QSsmokePrices];
    }
    QSsmokePricesModel.QSunit = NSLocalizedString(@"元/包", nil);
    QSsmokePricesModel.QSdefaultString = NSLocalizedString(@"请输入烟价格", nil);
    [self.QSviewDataArray addObject:QSsmokePricesModel];
    
    
    QSsmokingPlanModel *saveModel = [[QSsmokingPlanModel alloc] init];
    saveModel.QStype = 2;
    [self.QSviewDataArray addObject:saveModel];
    
    [self.QSmainTable reloadData];
}
- (void)QScloseEdit{
    [self.view endEditing:YES];
}
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    [self QScloseEdit];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.QSviewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    QSsmokingPlanModel *viewModel = self.QSviewDataArray[indexPath.row];
    if (viewModel.QStype == 0) {
        QSsmokingPlanEditTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"QSsmokingPlanEditTableViewCell" forIndexPath:indexPath];
        cell.model = viewModel;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }else if (viewModel.QStype == 1){
        QSsmokingPlanDateTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"QSsmokingPlanDateTableViewCell" forIndexPath:indexPath];
        cell.model = viewModel;
        __weak typeof(self) weakSelf = self;
        cell.QSsmokingPlanDateB = ^(QSsmokingPlanDateTableViewCell * _Nonnull cell) {
            [weakSelf.QSmainTable reloadData];
        };
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }else{
        QSsmokingPlanSaveTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"QSsmokingPlanSaveTableViewCell" forIndexPath:indexPath];
        __weak typeof(self) weakSelf = self;
        cell.QSsmokingPlanSaveB = ^(QSsmokingPlanSaveTableViewCell * _Nonnull cell) {
            [weakSelf QScloseEdit];
            [weakSelf QSsave];
        };
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }
}
- (void)QSsave{
    for (int i = 0; i < self.QSviewDataArray.count; i++) {
        QSsmokingPlanModel *model = self.QSviewDataArray[i];
        if (!model.QScontent.length && model.QStype != 2) {
            [MBProgressHUD QSshowReminderText:model.QSdefaultString];
            return;
        }else{
            switch (i) {
                case 0:
                    self.saveModel.QSsmokeAges = [model.QScontent integerValue];
                    break;
                case 2:
                self.saveModel.QSsmokingEveryDay = [model.QScontent integerValue];
                break;
                case 3:
                self.saveModel.QSsmokePrices = [model.QScontent integerValue];
                break;
                default:
                    break;
            }
        }
    }
    NSMutableDictionary *jsonDictionary = [[NSMutableDictionary alloc] initWithDictionary:(NSDictionary *)[self.saveModel yy_modelToJSONObject]];
    [jsonDictionary setObject:[[NSDate alloc] init] forKey:@"QSsaveDate"];
    if (!self.saveModel.QSclockInSAndNumberB.count) {
    NSMutableArray *QSclockInSAndNumberB = [[NSMutableArray alloc] init];
    NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
    NSString *clockInDateString = @"2019-01-01";
    [dic setObject:clockInDateString forKey:@"clockInDate"];
    [dic setObject:[NSNumber numberWithInteger:0] forKey:@"numberPackagesSmoke"];//当天抽烟包数
    [QSclockInSAndNumberB addObject:dic];
    [jsonDictionary setObject:QSclockInSAndNumberB forKey:@"QSclockInSAndNumberB"];
    }
    QSsmokingPlanModel *model = self.QSviewDataArray[1];
    NSString *dateString = model.QScontent;
    NSDate *date = [QSUIUtilities QSdateFromString:dateString formate:@"yyyy-MM-dd"];
    [jsonDictionary setObject:date forKey:@"QStimeGiveSmokeDate"];
    NSLog(@"jsonDictionary:%@",jsonDictionary);
    if (self.objectId.length) {
        BmobObject *diary = [BmobObject objectWithoutDataWithClassName:@"QSsmokingPlan" objectId:self.objectId];
        [diary saveAllWithDictionary:jsonDictionary];
        BmobUser *author = [BmobUser currentUser];
        [diary setObject:author forKey:@"author"];
        [diary updateInBackgroundWithResultBlock:^(BOOL isSuccessful, NSError *error) {
            if (isSuccessful) {
                //创建成功后的动作
                [MBProgressHUD QSshowReminderText:NSLocalizedString(@"更新成功", nil)];
                [self.superVC loadData];
                [self.navigationController popViewControllerAnimated:YES];
            } else if (error){
                //发生错误后的动作
                NSLog(@"error:%@",error);
                [MBProgressHUD QSshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            } else {
                [MBProgressHUD QSshowReminderText:NSLocalizedString(@"请稍后重试", nil)];

            }
        }];
    }else{
    BmobObject *diary = [BmobObject objectWithClassName:@"QSsmokingPlan"];
    [diary saveAllWithDictionary:jsonDictionary];
    BmobUser *author = [BmobUser currentUser];
    [diary setObject:author forKey:@"author"];
    [diary saveInBackgroundWithResultBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            //创建成功后的动作
            [MBProgressHUD QSshowReminderText:NSLocalizedString(@"保存成功", nil)];
            [self.superVC loadData];
            [self.navigationController popViewControllerAnimated:YES];
        } else if (error){
            //发生错误后的动作
            NSLog(@"error:%@",error);
            [MBProgressHUD QSshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        } else {
            [MBProgressHUD QSshowReminderText:NSLocalizedString(@"请稍后重试", nil)];

        }
    }];
    }
}
#pragma mark - 属性懒加载
- (QSsmokingPlanSaveModel *)saveModel{
    if (!_saveModel) {
        _saveModel = [[QSsmokingPlanSaveModel alloc] init];
        _saveModel.QScumulativeNubDays = 0;//累计天数
        _saveModel.QSaccumulativePac = 0;//累计少喝瓶数
        _saveModel.QScumulativeAmount = 0;//累计少花钱数
    }
    return _saveModel;
}
- (NSMutableArray *)QSviewDataArray{
    if (!_QSviewDataArray) {
        _QSviewDataArray = [[NSMutableArray alloc] init];
    }
    return _QSviewDataArray;
}
- (UITableView *)QSmainTable{
    if (!_QSmainTable) {
        _QSmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _QSmainTable.backgroundColor = QSH_Color(244, 245, 246, 1);
        _QSmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _QSmainTable.delegate = self;
        _QSmainTable.dataSource = self;
        _QSmainTable.rowHeight = UITableViewAutomaticDimension;
        _QSmainTable.estimatedRowHeight = 55.0f;
        _QSmainTable.tableHeaderView = [[UIView alloc] init];
        _QSmainTable.tableFooterView = [[UIView alloc] init];
        [_QSmainTable registerClass:[QSsmokingPlanEditTableViewCell class] forCellReuseIdentifier:@"QSsmokingPlanEditTableViewCell"];
        [_QSmainTable registerClass:[QSsmokingPlanDateTableViewCell class] forCellReuseIdentifier:@"QSsmokingPlanDateTableViewCell"];
        [_QSmainTable registerClass:[QSsmokingPlanSaveTableViewCell class] forCellReuseIdentifier:@"QSsmokingPlanSaveTableViewCell"];

        [self.view addSubview:_QSmainTable];
        [_QSmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.view);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view);
        }];
        UITapGestureRecognizer *tapGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(QScloseEdit)];
        [_QSmainTable addGestureRecognizer:tapGes];
        [self.view addGestureRecognizer:tapGes];
    }
    return _QSmainTable;
}
@end
