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
@property(nonatomic, strong)GAgamePlanSaveModel *GAsaveModel;
@property(nonatomic, strong)NSMutableArray *GAviewDataArray;
@property(nonatomic, strong)UITableView *GAmainTable;
@property(nonatomic, strong)GAgamePlanClockView *GAgamePlanClockView;
@end

@implementation GAClockViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"打卡", nil);
    [self GAloadData];
}
- (void)GAloadData{
    BmobQuery *bquery = [BmobQuery queryWithClassName:@"GAgamePlan"];
    BmobUser *author = [BmobUser currentUser];
    [bquery whereKey:@"author" equalTo:author];
    //查找GameScore表的数据
    __weak typeof(self) weakSelf = self;
    [bquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
        [self.GAmainTable.mj_header endRefreshing];
        if (error) {
            [weakSelf setContentView];
        }else{
            if (array.count) {
                BmobObject *obj = [array lastObject];
                weakSelf.objectId = [obj objectId];
             weakSelf.GAsaveModel.GAclockInSAndNumberB = [[NSMutableArray alloc] initWithArray:[obj objectForKey:@"GAclockInSAndNumberB"]];
                weakSelf.GAsaveModel.GAsaveDate = [obj objectForKey:@"GAsaveDate"];
                weakSelf.GAsaveModel.GAgameAges = [[obj objectForKey:@"GAgameAges"] integerValue];
                weakSelf.GAsaveModel.GAtimeGiveGameDate = [obj objectForKey:@"GAtimeGiveGameDate"];
                weakSelf.GAsaveModel.GAgameEveryDay = [[obj objectForKey:@"GAgameEveryDay"] integerValue];
                weakSelf.GAsaveModel.GAgameLong = [[obj objectForKey:@"GAgameLong"] integerValue];
                weakSelf.GAsaveModel.GAcumulativeNubDays = [[obj objectForKey:@"GAcumulativeNubDays"] integerValue];
                weakSelf.GAsaveModel.GAaccumulativeGames = [[obj objectForKey:@"GAaccumulativeGames"] integerValue];
                weakSelf.GAsaveModel.GAcumulativeAmount = [[obj objectForKey:@"GAcumulativeAmount"] integerValue];
                [weakSelf setContentView];
                }else{
                [weakSelf setContentView];
                }
        }
    }];
}
- (void)save{
    NSMutableDictionary *jsonDictionary = [[NSMutableDictionary alloc] initWithDictionary:(NSDictionary *)[self.GAsaveModel yy_modelToJSONObject]];
    [jsonDictionary setObject:[[NSDate alloc] init] forKey:@"GAsaveDate"];
    NSString *dateString = [GAUIUtilities GAformattedTimeStringWithDate:self.GAsaveModel.GAtimeGiveGameDate format:@"yyyy/MM/dd"];
    NSDate *date = [GAUIUtilities GAdateFromString:dateString formate:@"yyyy/MM/dd"];
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
    [self.GAmainTable reloadData];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    GAClockTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"GAClockTableViewCell" forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.model = self.GAsaveModel;
    __weak typeof(self) weakSelf = self;
    cell.GAClockCellB = ^(GAClockTableViewCell * _Nonnull cell) {
        if (cell.selectIndex == 0) {
            GAgamePlanViewController *GAgamePlanVC = [[GAgamePlanViewController alloc] init];
            GAgamePlanVC.hidesBottomBarWhenPushed = YES;
            GAgamePlanVC.objectId = weakSelf.objectId;
            GAgamePlanVC.saveModel = weakSelf.GAsaveModel;
            GAgamePlanVC.superVC = weakSelf;
            [weakSelf.navigationController pushViewController:GAgamePlanVC animated:YES];
        }else if (cell.selectIndex == 1){
            if (weakSelf.objectId.length) {
            NSDate *nowDate = [[NSDate alloc] init];
            NSString *nowDateString = [GAUIUtilities GAformattedTimeStringWithDate:nowDate format:@"yyyy/MM/dd"];
                for (int i = 0; i < weakSelf.GAsaveModel.GAclockInSAndNumberB.count; i++) {
                    NSMutableDictionary *dic = [[NSMutableDictionary alloc] initWithDictionary:weakSelf.GAsaveModel.GAclockInSAndNumberB[i]];
                    NSString *clockDateString = [dic objectForKey:@"clockInDate"];
                    if ([nowDateString isEqualToString:clockDateString]) {
                        [MBProgressHUD GAshowReminderText:NSLocalizedString(@"今天已经打卡", nil)];
                        return;
                    }
                }
                weakSelf.GAgamePlanClockView.hidden = NO;
            }else{
                [MBProgressHUD GAshowReminderText:NSLocalizedString(@"请先创建目标", nil)];
                 return;
            }
        }
    };
    return cell;
}
#pragma mark - 属性懒加载
- (GAgamePlanSaveModel *)GAsaveModel{
    if (!_GAsaveModel) {
        _GAsaveModel = [[GAgamePlanSaveModel alloc] init];
    }
    return _GAsaveModel;
}
- (NSMutableArray *)GAviewDataArray{
    if (!_GAviewDataArray) {
        _GAviewDataArray = [[NSMutableArray alloc] init];
    }
    return _GAviewDataArray;
}
- (UITableView *)GAmainTable{
    if (!_GAmainTable) {
        _GAmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _GAmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _GAmainTable.delegate = self;
        _GAmainTable.dataSource = self;
        _GAmainTable.rowHeight = UITableViewAutomaticDimension;
        _GAmainTable.estimatedRowHeight = 55.0f;
        _GAmainTable.tableHeaderView = [[UIView alloc] init];
        _GAmainTable.tableFooterView = [[UIView alloc] init];
        [_GAmainTable registerClass:[GAClockTableViewCell class] forCellReuseIdentifier:@"GAClockTableViewCell"];
        _GAmainTable.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(GAloadData)];
        [self.view addSubview:_GAmainTable];
           [_GAmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
               make.top.equalTo(self.view);
               make.leading.equalTo(self.view);
               make.trailing.equalTo(self.view);
               make.bottom.equalTo(self.view);
           }];
    }
    return _GAmainTable;
}
- (GAgamePlanClockView *)GAgamePlanClockView{
    if (!_GAgamePlanClockView) {
        _GAgamePlanClockView = [[GAgamePlanClockView alloc] init];
        [GAKeyWindow addSubview:_GAgamePlanClockView];
        [_GAgamePlanClockView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(GAKeyWindow);
            make.top.equalTo(GAKeyWindow);
            make.trailing.equalTo(GAKeyWindow);
            make.bottom.equalTo(GAKeyWindow);
        }];
        __weak typeof(self) weakSelf = self;
        _GAgamePlanClockView.GAgamePlanClockSaveB = ^(GAgamePlanClockView * _Nonnull view) {
            NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
            NSDate *nowDate = [[NSDate alloc] init];
            NSString *nowDateString = [GAUIUtilities GAformattedTimeStringWithDate:nowDate format:@"yyyy/MM/dd"];
            [dic setObject:nowDateString forKey:@"clockInDate"];
            [dic setObject:[NSNumber numberWithInteger:[view.contentField.text integerValue]] forKey:@"numberGamesPlayed"];//当天喝苏打水瓶数
           [weakSelf.GAsaveModel.GAclockInSAndNumberB addObject:dic];
            weakSelf.GAsaveModel.GAcumulativeNubDays += 1;
            weakSelf.GAsaveModel.GAaccumulativeGames += (weakSelf.GAsaveModel.GAgameEveryDay - [view.contentField.text integerValue]);
            weakSelf.GAsaveModel.GAcumulativeAmount = weakSelf.GAsaveModel.GAaccumulativeGames * weakSelf.GAsaveModel.GAgameLong;
            [weakSelf.GAmainTable reloadData];
            
            [weakSelf save];
        };
    }
    return _GAgamePlanClockView;
}
@end
