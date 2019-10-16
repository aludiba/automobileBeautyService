//
//  QSClockViewController.m
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "QSClockViewController.h"
#import "QSClockTableViewCell.h"
#import "QSsmokingPlanViewController.h"
#import "QSsmokingPlanSaveModel.h"
#import "QSsmokingPlanClockView.h"
@interface QSClockViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, copy)NSString *objectId;
@property(nonatomic, strong)QSsmokingPlanSaveModel *saveModel;
@property(nonatomic, strong)NSMutableArray *viewDataArray;
@property(nonatomic, strong)UITableView *mainTable;
@property(nonatomic, strong)QSsmokingPlanClockView *drinkingPlanClockView;
@end

@implementation QSClockViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"打卡", nil);
    [self loadData];
}
- (void)loadData{
    BmobQuery *bquery = [BmobQuery queryWithClassName:@"QSsmokingPlan"];
    BmobUser *author = [BmobUser currentUser];
    [bquery whereKey:@"author" equalTo:author];
    //查找GameScore表的数据
    __weak typeof(self) weakSelf = self;
    [bquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
        if (error) {
            [weakSelf setContentView];
        }else{
            if (array.count) {
                BmobObject *obj = [array lastObject];
                weakSelf.objectId = [obj objectId];
             weakSelf.saveModel.QSclockInSAndNumberB = [[NSMutableArray alloc] initWithArray:[obj objectForKey:@"QSclockInSAndNumberB"]];
                weakSelf.saveModel.QSsaveDate = [obj objectForKey:@"QSsaveDate"];
                weakSelf.saveModel.QSsmokeAges = [[obj objectForKey:@"QSsmokeAges"] integerValue];
                weakSelf.saveModel.QStimeGiveSmokeDate = [obj objectForKey:@"QStimeGiveSmokeDate"];
                weakSelf.saveModel.QSsmokingEveryDay = [[obj objectForKey:@"QSsmokingEveryDay"] integerValue];
                weakSelf.saveModel.QSsmokePrices = [[obj objectForKey:@"QSsmokePrices"] integerValue];
                weakSelf.saveModel.QScumulativeNubDays = [[obj objectForKey:@"QScumulativeNubDays"] integerValue];
                weakSelf.saveModel.QSaccumulativePac = [[obj objectForKey:@"QSaccumulativePac"] integerValue];
                weakSelf.saveModel.QScumulativeAmount = [[obj objectForKey:@"QScumulativeAmount"] integerValue];
                [weakSelf setContentView];
                }else{
                [weakSelf setContentView];
                }
        }
    }];
}
- (void)save{
    NSMutableDictionary *jsonDictionary = [[NSMutableDictionary alloc] initWithDictionary:(NSDictionary *)[self.saveModel yy_modelToJSONObject]];
    [jsonDictionary setObject:[[NSDate alloc] init] forKey:@"QSsaveDate"];
    NSString *dateString = [QSUIUtilities QSformattedTimeStringWithDate:self.saveModel.QStimeGiveSmokeDate format:@"yyyy-MM-dd"];
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
        } else if (error){
            //发生错误后的动作
            [MBProgressHUD QSshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        } else {
            [MBProgressHUD QSshowReminderText:NSLocalizedString(@"请稍后重试", nil)];

        }
    }];
    }
}
- (void)setContentView{
    [self.mainTable reloadData];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    QSClockTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"QSClockTableViewCell" forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.model = self.saveModel;
    __weak typeof(self) weakSelf = self;
    cell.QSClockCellB = ^(QSClockTableViewCell * _Nonnull cell) {
        if (cell.selectIndex == 0) {
            QSsmokingPlanViewController *QSsmokingPlanVC = [[QSsmokingPlanViewController alloc] init];
            QSsmokingPlanVC.hidesBottomBarWhenPushed = YES;
            QSsmokingPlanVC.objectId = weakSelf.objectId;
            QSsmokingPlanVC.saveModel = weakSelf.saveModel;
            QSsmokingPlanVC.superVC = weakSelf;
            [weakSelf.navigationController pushViewController:QSsmokingPlanVC animated:YES];
        }else if (cell.selectIndex == 1){
            if (weakSelf.objectId.length) {
            NSDate *nowDate = [[NSDate alloc] init];
            NSString *nowDateString = [QSUIUtilities QSformattedTimeStringWithDate:nowDate format:@"yyyy-MM-dd"];
                for (int i = 0; i < weakSelf.saveModel.QSclockInSAndNumberB.count; i++) {
                    NSMutableDictionary *dic = [[NSMutableDictionary alloc] initWithDictionary:weakSelf.saveModel.QSclockInSAndNumberB[i]];
                    NSString *clockDateString = [dic objectForKey:@"clockInDate"];
                    if ([nowDateString isEqualToString:clockDateString]) {
                        [MBProgressHUD QSshowReminderText:NSLocalizedString(@"今天已经打卡", nil)];
                        return;
                    }
                }
                weakSelf.drinkingPlanClockView.hidden = NO;
            }else{
                [MBProgressHUD QSshowReminderText:NSLocalizedString(@"请先创建目标", nil)];
                 return;
            }
        }
    };
    return cell;
}
#pragma mark - 属性懒加载
- (QSsmokingPlanSaveModel *)saveModel{
    if (!_saveModel) {
        _saveModel = [[QSsmokingPlanSaveModel alloc] init];
    }
    return _saveModel;
}
- (NSMutableArray *)viewDataArray{
    if (!_viewDataArray) {
        _viewDataArray = [[NSMutableArray alloc] init];
    }
    return _viewDataArray;
}
- (UITableView *)mainTable{
    if (!_mainTable) {
        _mainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _mainTable.backgroundColor = QSH_Color(244, 245, 246, 1);
        _mainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _mainTable.delegate = self;
        _mainTable.dataSource = self;
        _mainTable.rowHeight = UITableViewAutomaticDimension;
        _mainTable.estimatedRowHeight = 55.0f;
        _mainTable.tableHeaderView = [[UIView alloc] init];
        _mainTable.tableFooterView = [[UIView alloc] init];
        [_mainTable registerClass:[QSClockTableViewCell class] forCellReuseIdentifier:@"QSClockTableViewCell"];
        [self.view addSubview:_mainTable];
           [_mainTable mas_makeConstraints:^(MASConstraintMaker *make) {
               make.top.equalTo(self.view);
               make.leading.equalTo(self.view);
               make.trailing.equalTo(self.view);
               make.bottom.equalTo(self.view);
           }];
    }
    return _mainTable;
}
- (QSsmokingPlanClockView *)drinkingPlanClockView{
    if (!_drinkingPlanClockView) {
        _drinkingPlanClockView = [[QSsmokingPlanClockView alloc] init];
        [QSKeyWindow addSubview:_drinkingPlanClockView];
        [_drinkingPlanClockView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(QSKeyWindow);
            make.top.equalTo(QSKeyWindow);
            make.trailing.equalTo(QSKeyWindow);
            make.bottom.equalTo(QSKeyWindow);
        }];
        __weak typeof(self) weakSelf = self;
        _drinkingPlanClockView.QSsmokingPlanClockSaveB = ^(QSsmokingPlanClockView * _Nonnull view) {
            NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
            NSDate *nowDate = [[NSDate alloc] init];
            NSString *nowDateString = [QSUIUtilities QSformattedTimeStringWithDate:nowDate format:@"yyyy-MM-dd"];
//            NSDate *clockInDate = [QSUIUtilities QSdateFromString:nowDateString formate:@"yyyy-MM-dd"];
            [dic setObject:nowDateString forKey:@"clockInDate"];
            [dic setObject:[NSNumber numberWithInteger:[view.contentField.text integerValue]] forKey:@"numberPackagesSmoke"];//当天抽烟包数
           [weakSelf.saveModel.QSclockInSAndNumberB addObject:dic];
            weakSelf.saveModel.QScumulativeNubDays += 1;
            weakSelf.saveModel.QSaccumulativePac += (weakSelf.saveModel.QSsmokingEveryDay - [view.contentField.text integerValue]);
            weakSelf.saveModel.QScumulativeAmount = weakSelf.saveModel.QSaccumulativePac * weakSelf.saveModel.QSsmokePrices;
            [weakSelf.mainTable reloadData];
            
            [weakSelf save];
        };
    }
    return _drinkingPlanClockView;
}
@end
