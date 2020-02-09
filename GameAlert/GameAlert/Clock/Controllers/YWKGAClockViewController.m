//
//  YWKGAClockViewController.m
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "YWKGAClockViewController.h"
#import "YWKGAClockTableViewCell.h"
#import "YWKGAgamePlanViewController.h"
#import "YWKGAgamePlanSaveModel.h"
#import "YWKGAgamePlanClockView.h"
@interface YWKGAClockViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, copy)NSString *objectId;
@property(nonatomic, strong)YWKGAgamePlanSaveModel *YWKGAsaveModel;
@property(nonatomic, strong)NSMutableArray *YWKGAviewDataArray;
@property(nonatomic, strong)UITableView *YWKGAmainTable;
@property(nonatomic, strong)YWKGAgamePlanClockView *YWKGAgamePlanClockView;
@end

@implementation YWKGAClockViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"打卡", nil);
    [self YWKGAloadData];
}
- (void)YWKGAloadData{
    AVQuery *bquery = [AVQuery queryWithClassName:@"YWKGAgamePlan"];
    AVUser *author = [AVUser currentUser];
    [bquery whereKey:@"author" equalTo:author];
    //查找GameScore表的数据
    __weak typeof(self) weakSelf = self;
    [bquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
        [self.YWKGAmainTable.mj_header endRefreshing];
        if (error) {
            [weakSelf setContentView];
        }else{
            if (array.count) {
                AVObject *obj = [array lastObject];
                weakSelf.objectId = [obj objectId];
             weakSelf.YWKGAsaveModel.YWKGAclockInSAndNumberB = [[NSMutableArray alloc] initWithArray:[obj objectForKey:@"YWKGAclockInSAndNumberB"]];
                weakSelf.YWKGAsaveModel.YWKGAsaveDate = [obj objectForKey:@"YWKGAsaveDate"];
                weakSelf.YWKGAsaveModel.YWKGAgameAges = [[obj objectForKey:@"YWKGAgameAges"] integerValue];
                weakSelf.YWKGAsaveModel.YWKGAtimeGiveGameDate = [obj objectForKey:@"YWKGAtimeGiveGameDate"];
                weakSelf.YWKGAsaveModel.YWKGAgameEveryDay = [[obj objectForKey:@"YWKGAgameEveryDay"] integerValue];
                weakSelf.YWKGAsaveModel.YWKGAgameLong = [[obj objectForKey:@"YWKGAgameLong"] integerValue];
                weakSelf.YWKGAsaveModel.YWKGAcumulativeNubDays = [[obj objectForKey:@"YWKGAcumulativeNubDays"] integerValue];
                weakSelf.YWKGAsaveModel.YWKGAaccumulativeGames = [[obj objectForKey:@"YWKGAaccumulativeGames"] integerValue];
                weakSelf.YWKGAsaveModel.YWKGAcumulativeAmount = [[obj objectForKey:@"YWKGAcumulativeAmount"] integerValue];
                [weakSelf setContentView];
                }else{
                [weakSelf setContentView];
                }
        }
    }];
}
- (void)save{
    NSMutableDictionary *jsonDictionary = [[NSMutableDictionary alloc] initWithDictionary:(NSDictionary *)[self.YWKGAsaveModel yy_modelToJSONObject]];
    [jsonDictionary setObject:[[NSDate alloc] init] forKey:@"YWKGAsaveDate"];
    NSString *dateString = [YWKGAUIUtilities YWKGAformattedTimeStringWithDate:self.YWKGAsaveModel.YWKGAtimeGiveGameDate format:@"yyyy/MM/dd"];
    NSDate *date = [YWKGAUIUtilities YWKGAdateFromString:dateString formate:@"yyyy/MM/dd"];
    [jsonDictionary setObject:date forKey:@"YWKGAtimeGiveGameDate"];
    if (self.objectId.length) {
        AVObject *diary = [AVObject objectWithoutDataWithClassName:@"YWKGAgamePlan" objectId:self.objectId];
        for (NSString *key in jsonDictionary.allKeys) {
            [diary setObject:[jsonDictionary objectForKey:key]  forKey:key];
        }
        AVUser *author = [AVUser currentUser];
        [diary setObject:author forKey:@"author"];
        [diary saveInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
            if (isSuccessful) {
                //创建成功后的动作
                [MBProgressHUD YWKGAshowReminderText:NSLocalizedString(@"更新成功", nil)];
            } else if (error){
                //发生错误后的动作
                NSLog(@"error:%@",error);
                [MBProgressHUD YWKGAshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            } else {
                [MBProgressHUD YWKGAshowReminderText:NSLocalizedString(@"请稍后重试", nil)];

            }
        }];
    }else{
    AVObject *diary = [AVObject objectWithClassName:@"YWKGAgamePlan"];
    for (NSString *key in jsonDictionary.allKeys) {
        [diary setObject:[jsonDictionary objectForKey:key]  forKey:key];
    }
    AVUser *author = [AVUser currentUser];
    [diary setObject:author forKey:@"author"];
    [diary saveInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            //创建成功后的动作
            [MBProgressHUD YWKGAshowReminderText:NSLocalizedString(@"保存成功", nil)];
        } else if (error){
            //发生错误后的动作
            [MBProgressHUD YWKGAshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        } else {
            [MBProgressHUD YWKGAshowReminderText:NSLocalizedString(@"请稍后重试", nil)];

        }
    }];
    }
}
- (void)setContentView{
    [self.YWKGAmainTable reloadData];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    YWKGAClockTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"YWKGAClockTableViewCell" forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.model = self.YWKGAsaveModel;
    __weak typeof(self) weakSelf = self;
    cell.YWKGAClockCellB = ^(YWKGAClockTableViewCell * _Nonnull cell) {
        if (cell.selectIndex == 0) {
            YWKGAgamePlanViewController *YWKGAgamePlanVC = [[YWKGAgamePlanViewController alloc] init];
            YWKGAgamePlanVC.hidesBottomBarWhenPushed = YES;
            YWKGAgamePlanVC.objectId = weakSelf.objectId;
            YWKGAgamePlanVC.saveModel = weakSelf.YWKGAsaveModel;
            YWKGAgamePlanVC.superVC = weakSelf;
            [weakSelf.navigationController pushViewController:YWKGAgamePlanVC animated:YES];
        }else if (cell.selectIndex == 1){
            if (weakSelf.objectId.length) {
            NSDate *nowDate = [[NSDate alloc] init];
            NSString *nowDateString = [YWKGAUIUtilities YWKGAformattedTimeStringWithDate:nowDate format:@"yyyy/MM/dd"];
                for (int i = 0; i < weakSelf.YWKGAsaveModel.YWKGAclockInSAndNumberB.count; i++) {
                    NSMutableDictionary *dic = [[NSMutableDictionary alloc] initWithDictionary:weakSelf.YWKGAsaveModel.YWKGAclockInSAndNumberB[i]];
                    NSString *clockDateString = [dic objectForKey:@"clockInDate"];
                    if ([nowDateString isEqualToString:clockDateString]) {
                        [MBProgressHUD YWKGAshowReminderText:NSLocalizedString(@"今天已经打卡", nil)];
                        return;
                    }
                }
                weakSelf.YWKGAgamePlanClockView.hidden = NO;
            }else{
                [MBProgressHUD YWKGAshowReminderText:NSLocalizedString(@"请先创建目标", nil)];
                 return;
            }
        }
    };
    return cell;
}
#pragma mark - 属性懒加载
- (YWKGAgamePlanSaveModel *)YWKGAsaveModel{
    if (!_YWKGAsaveModel) {
        _YWKGAsaveModel = [[YWKGAgamePlanSaveModel alloc] init];
    }
    return _YWKGAsaveModel;
}
- (NSMutableArray *)YWKGAviewDataArray{
    if (!_YWKGAviewDataArray) {
        _YWKGAviewDataArray = [[NSMutableArray alloc] init];
    }
    return _YWKGAviewDataArray;
}
- (UITableView *)YWKGAmainTable{
    if (!_YWKGAmainTable) {
        _YWKGAmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _YWKGAmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _YWKGAmainTable.delegate = self;
        _YWKGAmainTable.dataSource = self;
        _YWKGAmainTable.rowHeight = UITableViewAutomaticDimension;
        _YWKGAmainTable.estimatedRowHeight = 55.0f;
        _YWKGAmainTable.tableHeaderView = [[UIView alloc] init];
        _YWKGAmainTable.tableFooterView = [[UIView alloc] init];
        [_YWKGAmainTable registerClass:[YWKGAClockTableViewCell class] forCellReuseIdentifier:@"YWKGAClockTableViewCell"];
        _YWKGAmainTable.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(YWKGAloadData)];
        [self.view addSubview:_YWKGAmainTable];
           [_YWKGAmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
               make.top.equalTo(self.view);
               make.leading.equalTo(self.view);
               make.trailing.equalTo(self.view);
               make.bottom.equalTo(self.view);
           }];
    }
    return _YWKGAmainTable;
}
- (YWKGAgamePlanClockView *)YWKGAgamePlanClockView{
    if (!_YWKGAgamePlanClockView) {
        _YWKGAgamePlanClockView = [[YWKGAgamePlanClockView alloc] init];
        [YWKGAKeyWindow addSubview:_YWKGAgamePlanClockView];
        [_YWKGAgamePlanClockView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(YWKGAKeyWindow);
            make.top.equalTo(YWKGAKeyWindow);
            make.trailing.equalTo(YWKGAKeyWindow);
            make.bottom.equalTo(YWKGAKeyWindow);
        }];
        __weak typeof(self) weakSelf = self;
        _YWKGAgamePlanClockView.YWKGAgamePlanClockSaveB = ^(YWKGAgamePlanClockView * _Nonnull view) {
            NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
            NSDate *nowDate = [[NSDate alloc] init];
            NSString *nowDateString = [YWKGAUIUtilities YWKGAformattedTimeStringWithDate:nowDate format:@"yyyy/MM/dd"];
            [dic setObject:nowDateString forKey:@"clockInDate"];
            [dic setObject:[NSNumber numberWithInteger:[view.contentField.text integerValue]] forKey:@"numberGamesPlayed"];//当天喝苏打水瓶数
           [weakSelf.YWKGAsaveModel.YWKGAclockInSAndNumberB addObject:dic];
            weakSelf.YWKGAsaveModel.YWKGAcumulativeNubDays += 1;
            weakSelf.YWKGAsaveModel.YWKGAaccumulativeGames += (weakSelf.YWKGAsaveModel.YWKGAgameEveryDay - [view.contentField.text integerValue]);
            weakSelf.YWKGAsaveModel.YWKGAcumulativeAmount = weakSelf.YWKGAsaveModel.YWKGAaccumulativeGames * weakSelf.YWKGAsaveModel.YWKGAgameLong;
            [weakSelf.YWKGAmainTable reloadData];
            
            [weakSelf save];
        };
    }
    return _YWKGAgamePlanClockView;
}
@end
