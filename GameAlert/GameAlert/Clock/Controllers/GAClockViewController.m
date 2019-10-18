//
//  GAClockViewController.m
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "GAClockViewController.h"
#import "GAClockTableViewCell.h"
#import "GAgamePlanViewController.h"
#import "GAgamePlanSaveModel.h"
#import "GAgamePlanClockView.h"
@interface GAClockViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, copy)NSString *objectId;
@property(nonatomic, strong)GAgamePlanSaveModel *saveModel;
@property(nonatomic, strong)NSMutableArray *viewDataArray;
@property(nonatomic, strong)UITableView *mainTable;
@property(nonatomic, strong)GAgamePlanClockView *drinkingPlanClockView;
@end

@implementation GAClockViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"打卡", nil);
    [self loadData];
}
- (void)loadData{
    BmobQuery *bquery = [BmobQuery queryWithClassName:@"GAgamePlan"];
    BmobUser *author = [BmobUser currentUser];
    [bquery whereKey:@"author" equalTo:author];
    //查找GameScore表的数据
    __weak typeof(self) weakSelf = self;
    [bquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
        [self.mainTable.mj_header endRefreshing];
        if (error) {
            [weakSelf setContentView];
        }else{
            if (array.count) {
                BmobObject *obj = [array lastObject];
                weakSelf.objectId = [obj objectId];
             weakSelf.saveModel.GAclockInSAndNumberB = [[NSMutableArray alloc] initWithArray:[obj objectForKey:@"GAclockInSAndNumberB"]];
                weakSelf.saveModel.GAsaveDate = [obj objectForKey:@"GAsaveDate"];
                weakSelf.saveModel.GAgameAges = [[obj objectForKey:@"GAgameAges"] integerValue];
                weakSelf.saveModel.GAtimeGiveGameDate = [obj objectForKey:@"GAtimeGiveGameDate"];
                weakSelf.saveModel.GAgameEveryDay = [[obj objectForKey:@"GAgameEveryDay"] integerValue];
                weakSelf.saveModel.GAgameLong = [[obj objectForKey:@"GAGAgameLong"] integerValue];
                weakSelf.saveModel.GAcumulativeNubDays = [[obj objectForKey:@"GAcumulativeNubDays"] integerValue];
                weakSelf.saveModel.GAaccumulativeGames = [[obj objectForKey:@"GAaccumulativeGames"] integerValue];
                weakSelf.saveModel.GAcumulativeAmount = [[obj objectForKey:@"GAcumulativeAmount"] integerValue];
                [weakSelf setContentView];
                }else{
                [weakSelf setContentView];
                }
        }
    }];
}
- (void)save{
    NSMutableDictionary *jsonDictionary = [[NSMutableDictionary alloc] initWithDictionary:(NSDictionary *)[self.saveModel yy_modelToJSONObject]];
    [jsonDictionary setObject:[[NSDate alloc] init] forKey:@"GAsaveDate"];
    NSString *dateString = [GAUIUtilities GAformattedTimeStringWithDate:self.saveModel.GAtimeGiveGameDate format:@"yyyy-MM-dd"];
    NSDate *date = [GAUIUtilities GAdateFromString:dateString formate:@"yyyy-MM-dd"];
    [jsonDictionary setObject:date forKey:@"GAtimeGiveGameDate"];
    NSLog(@"jsonDictionary:%@",jsonDictionary);
    if (self.objectId.length) {
        BmobObject *diary = [BmobObject objectWithoutDataWithClassName:@"GAgamePlan" objectId:self.objectId];
        [diary saveAllWithDictionary:jsonDictionary];
        BmobUser *author = [BmobUser currentUser];
        [diary setObject:author forKey:@"author"];
        [diary updateInBackgroundWithResultBlock:^(BOOL isSuccessful, NSError *error) {
            if (isSuccessful) {
                //创建成功后的动作
                [MBProgressHUD GAshowReminderText:NSLocalizedString(@"更新成功", nil)];
            } else if (error){
                //发生错误后的动作
                NSLog(@"error:%@",error);
                [MBProgressHUD GAshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            } else {
                [MBProgressHUD GAshowReminderText:NSLocalizedString(@"请稍后重试", nil)];

            }
        }];
    }else{
    BmobObject *diary = [BmobObject objectWithClassName:@"GAgamePlan"];
    [diary saveAllWithDictionary:jsonDictionary];
    BmobUser *author = [BmobUser currentUser];
    [diary setObject:author forKey:@"author"];
    [diary saveInBackgroundWithResultBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            //创建成功后的动作
            [MBProgressHUD GAshowReminderText:NSLocalizedString(@"保存成功", nil)];
        } else if (error){
            //发生错误后的动作
            [MBProgressHUD GAshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        } else {
            [MBProgressHUD GAshowReminderText:NSLocalizedString(@"请稍后重试", nil)];

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
    GAClockTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"GAClockTableViewCell" forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.model = self.saveModel;
    __weak typeof(self) weakSelf = self;
    cell.GAClockCellB = ^(GAClockTableViewCell * _Nonnull cell) {
        if (cell.selectIndex == 0) {
            GAgamePlanViewController *GAgamePlanVC = [[GAgamePlanViewController alloc] init];
            GAgamePlanVC.hidesBottomBarWhenPushed = YES;
            GAgamePlanVC.objectId = weakSelf.objectId;
            GAgamePlanVC.saveModel = weakSelf.saveModel;
            GAgamePlanVC.superVC = weakSelf;
            [weakSelf.navigationController pushViewController:GAgamePlanVC animated:YES];
        }else if (cell.selectIndex == 1){
            if (weakSelf.objectId.length) {
            NSDate *nowDate = [[NSDate alloc] init];
            NSString *nowDateString = [GAUIUtilities GAformattedTimeStringWithDate:nowDate format:@"yyyy-MM-dd"];
                for (int i = 0; i < weakSelf.saveModel.GAclockInSAndNumberB.count; i++) {
                    NSMutableDictionary *dic = [[NSMutableDictionary alloc] initWithDictionary:weakSelf.saveModel.GAclockInSAndNumberB[i]];
                    NSString *clockDateString = [dic objectForKey:@"clockInDate"];
                    if ([nowDateString isEqualToString:clockDateString]) {
                        [MBProgressHUD GAshowReminderText:NSLocalizedString(@"今天已经打卡", nil)];
                        return;
                    }
                }
                weakSelf.drinkingPlanClockView.hidden = NO;
            }else{
                [MBProgressHUD GAshowReminderText:NSLocalizedString(@"请先创建目标", nil)];
                 return;
            }
        }
    };
    return cell;
}
#pragma mark - 属性懒加载
- (GAgamePlanSaveModel *)saveModel{
    if (!_saveModel) {
        _saveModel = [[GAgamePlanSaveModel alloc] init];
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
        _mainTable.backgroundColor = GAH_Color(244, 245, 246, 1);
        _mainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _mainTable.delegate = self;
        _mainTable.dataSource = self;
        _mainTable.rowHeight = UITableViewAutomaticDimension;
        _mainTable.estimatedRowHeight = 55.0f;
        _mainTable.tableHeaderView = [[UIView alloc] init];
        _mainTable.tableFooterView = [[UIView alloc] init];
        [_mainTable registerClass:[GAClockTableViewCell class] forCellReuseIdentifier:@"GAClockTableViewCell"];
        _mainTable.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(loadData)];
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
- (GAgamePlanClockView *)drinkingPlanClockView{
    if (!_drinkingPlanClockView) {
        _drinkingPlanClockView = [[GAgamePlanClockView alloc] init];
        [GAKeyWindow addSubview:_drinkingPlanClockView];
        [_drinkingPlanClockView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(GAKeyWindow);
            make.top.equalTo(GAKeyWindow);
            make.trailing.equalTo(GAKeyWindow);
            make.bottom.equalTo(GAKeyWindow);
        }];
        __weak typeof(self) weakSelf = self;
        _drinkingPlanClockView.GAgamePlanClockSaveB = ^(GAgamePlanClockView * _Nonnull view) {
            NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
            NSDate *nowDate = [[NSDate alloc] init];
            NSString *nowDateString = [GAUIUtilities GAformattedTimeStringWithDate:nowDate format:@"yyyy-MM-dd"];
//            NSDate *clockInDate = [GAUIUtilities GAdateFromString:nowDateString formate:@"yyyy-MM-dd"];
            [dic setObject:nowDateString forKey:@"clockInDate"];
            [dic setObject:[NSNumber numberWithInteger:[view.contentField.text integerValue]] forKey:@"numberGamesPlayed"];//当天喝苏打水瓶数
           [weakSelf.saveModel.GAclockInSAndNumberB addObject:dic];
            weakSelf.saveModel.GAcumulativeNubDays += 1;
            weakSelf.saveModel.GAaccumulativeGames += (weakSelf.saveModel.GAgameEveryDay - [view.contentField.text integerValue]);
            weakSelf.saveModel.GAcumulativeAmount = weakSelf.saveModel.GAaccumulativeGames * weakSelf.saveModel.GAgameLong;
            [weakSelf.mainTable reloadData];
            
            [weakSelf save];
        };
    }
    return _drinkingPlanClockView;
}
@end
