//
//  AFgamePlanViewController.m
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AFgamePlanViewController.h"
#import "AFClockViewController.h"
#import "AFgamePlanModel.h"
#import "AFgamePlanSaveModel.h"
#import "AFgamePlanEditTableViewCell.h"
#import "AFgamePlanDateTableViewCell.h"
#import "AFgamePlanSaveTableViewCell.h"

@interface AFgamePlanViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSMutableArray *AFviewDataArray;
@property(nonatomic, strong)UITableView *AFmainTable;
@end

@implementation AFgamePlanViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"戒游戏计划", nil);
    [self AFsetContentView];
}
- (void)AFsetContentView{
    self.view.backgroundColor = AFH_Color(24, 50, 62, 1);
    AFgamePlanModel *gameAgesModel = [[AFgamePlanModel alloc] init];
    gameAgesModel.AFtype = 0;
    gameAgesModel.AFtitle = NSLocalizedString(@"游戏龄", nil);
    gameAgesModel.AFunit = NSLocalizedString(@"年", nil);
    if (self.AFobjectId.length) {
        gameAgesModel.AFcontent = [NSString stringWithFormat:@"%ld",self.AFsaveModel.AFgameAges];
    }
    gameAgesModel.AFdefaultString = NSLocalizedString(@"请输入游戏龄", nil);
    [self.AFviewDataArray addObject:gameAgesModel];
    
    AFgamePlanModel *timeDrinkModel = [[AFgamePlanModel alloc] init];
    timeDrinkModel.AFtype = 1;
    timeDrinkModel.AFtitle = NSLocalizedString(@"戒游戏时间", nil);
    if (self.AFobjectId.length) {
        timeDrinkModel.AFcontent = [AFUIUtilities AFformattedTimeStringWithDate:self.AFsaveModel.AFtimeGiveGameDate format:@"yyyy/MM/dd"];
    }
    timeDrinkModel.AFdefaultString = NSLocalizedString(@"请选择戒游戏时间", nil);
    [self.AFviewDataArray addObject:timeDrinkModel];
    
    AFgamePlanModel *AFgameEveryDayModel = [[AFgamePlanModel alloc] init];
    AFgameEveryDayModel.AFtype = 0;
    AFgameEveryDayModel.AFtitle = NSLocalizedString(@"每天游戏次数", nil);
    if (self.AFobjectId.length) {
        AFgameEveryDayModel.AFcontent = [NSString stringWithFormat:@"%ld",self.AFsaveModel.AFgameEveryDay];
    }
    AFgameEveryDayModel.AFunit = NSLocalizedString(@"次", nil);
    AFgameEveryDayModel.AFdefaultString = NSLocalizedString(@"请输入每天游戏次数", nil);
    [self.AFviewDataArray addObject:AFgameEveryDayModel];
    
    AFgamePlanModel *AFgameLongModel = [[AFgamePlanModel alloc] init];
    AFgameLongModel.AFtype = 0;
    AFgameLongModel.AFtitle = NSLocalizedString(@"游戏时间", nil);
    if (self.AFobjectId.length) {
        AFgameLongModel.AFcontent = [NSString stringWithFormat:@"%ld",self.AFsaveModel.AFgameLong];
    }
    AFgameLongModel.AFunit = NSLocalizedString(@"小时/次", nil);
    AFgameLongModel.AFdefaultString = NSLocalizedString(@"请输入游戏时间", nil);
    [self.AFviewDataArray addObject:AFgameLongModel];
    
    
    AFgamePlanModel *saveModel = [[AFgamePlanModel alloc] init];
    saveModel.AFtype = 2;
    [self.AFviewDataArray addObject:saveModel];
    
    [self.AFmainTable reloadData];
}
- (void)AFcloseEdit{
    [self.view endEditing:YES];
}
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    [self AFcloseEdit];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.AFviewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    AFgamePlanModel *viewModel = self.AFviewDataArray[indexPath.row];
    if (viewModel.AFtype == 0) {
        AFgamePlanEditTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"AFgamePlanEditTableViewCell" forIndexPath:indexPath];
        cell.AFmodel = viewModel;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }else if (viewModel.AFtype == 1){
        AFgamePlanDateTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"AFgamePlanDateTableViewCell" forIndexPath:indexPath];
        cell.AFmodel = viewModel;
        __weak typeof(self) weakSelf = self;
        cell.AFgamePlanDateB = ^(AFgamePlanDateTableViewCell * _Nonnull cell) {
            [weakSelf.AFmainTable reloadData];
        };
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }else{
        AFgamePlanSaveTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"AFgamePlanSaveTableViewCell" forIndexPath:indexPath];
        __weak typeof(self) weakSelf = self;
        cell.AFgamePlanSaveB = ^(AFgamePlanSaveTableViewCell * _Nonnull cell) {
            [weakSelf AFcloseEdit];
            [weakSelf AFsave];
        };
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }
}
- (void)AFsave{
    for (int i = 0; i < self.AFviewDataArray.count; i++) {
        AFgamePlanModel *model = self.AFviewDataArray[i];
        if (!model.AFcontent.length && model.AFtype != 2) {
            [MBProgressHUD AFshowReminderText:model.AFdefaultString];
            return;
        }else{
            switch (i) {
                case 0:
                    self.AFsaveModel.AFgameAges = [model.AFcontent integerValue];
                    break;
                case 2:
                    self.AFsaveModel.AFgameEveryDay = [model.AFcontent integerValue];
                break;
                case 3:
                    self.AFsaveModel.AFgameLong = [model.AFcontent integerValue];
                break;
                default:
                    break;
            }
        }
    }
    NSMutableDictionary *jsonDictionary = [[NSMutableDictionary alloc] initWithDictionary:(NSDictionary *)[self.AFsaveModel yy_modelToJSONObject]];
    [jsonDictionary setObject:[[NSDate alloc] init] forKey:@"AFsaveDate"];
    if (!self.AFsaveModel.AFclockInSAndNumberB.count) {
    NSMutableArray *AFclockInSAndNumberB = [[NSMutableArray alloc] init];
    NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
    NSString *clockInDateString = @"2019/01/01";
    [dic setObject:clockInDateString forKey:@"clockInDate"];
    [dic setObject:[NSNumber numberWithInteger:0] forKey:@"numberGamesPlayed"];//当天喝苏打水瓶数
    [AFclockInSAndNumberB addObject:dic];
    [jsonDictionary setObject:AFclockInSAndNumberB forKey:@"AFclockInSAndNumberB"];
    }
    AFgamePlanModel *model = self.AFviewDataArray[1];
    NSString *dateString = model.AFcontent;
    NSDate *date = [AFUIUtilities AFdateFromString:dateString formate:@"yyyy/MM/dd"];
    [jsonDictionary setObject:date forKey:@"AFtimeGiveGameDate"];
    NSLog(@"jsonDictionary:%@",jsonDictionary);
    if (self.AFobjectId.length) {
        AVObject *diary = [AVObject objectWithoutDataWithClassName:@"AFgamePlan" objectId:self.AFobjectId];
        for (NSString *key in jsonDictionary.allKeys) {
            [diary setObject:[jsonDictionary objectForKey:key]  forKey:key];
        }
        AVUser *author = [AVUser currentUser];
        [diary setObject:author forKey:@"author"];
        [diary saveInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
            if (isSuccessful) {
                //创建成功后的动作
                [MBProgressHUD AFshowReminderText:NSLocalizedString(@"更新成功", nil)];
                [self.AFsuperVC AFloadData];
                [self.navigationController popViewControllerAnimated:YES];
            } else if (error){
                //发生错误后的动作
                NSLog(@"error:%@",error);
                [MBProgressHUD AFshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            } else {
                [MBProgressHUD AFshowReminderText:NSLocalizedString(@"请稍后重试", nil)];

            }
        }];
    }else{
    AVObject *diary = [AVObject objectWithClassName:@"AFgamePlan"];
    for (NSString *key in jsonDictionary.allKeys) {
        [diary setObject:[jsonDictionary objectForKey:key]  forKey:key];
    }
    AVUser *author = [AVUser currentUser];
    [diary setObject:author forKey:@"author"];
    [diary saveInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            //创建成功后的动作
            [MBProgressHUD AFshowReminderText:NSLocalizedString(@"保存成功", nil)];
            [self.AFsuperVC AFloadData];
            [self.navigationController popViewControllerAnimated:YES];
        } else if (error){
            //发生错误后的动作
            NSLog(@"error:%@",error);
            [MBProgressHUD AFshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        } else {
            [MBProgressHUD AFshowReminderText:NSLocalizedString(@"请稍后重试", nil)];

        }
    }];
    }
}
#pragma mark - 属性懒加载
- (AFgamePlanSaveModel *)AFsaveModel{
    if (!_AFsaveModel) {
        _AFsaveModel = [[AFgamePlanSaveModel alloc] init];
        _AFsaveModel.AFcumulativeNubDays = 0;//累计天数
        _AFsaveModel.AFaccumulativeGames = 0;//累计少玩瓶数
        _AFsaveModel.AFcumulativeAmount = 0;//累计少花钱数
    }
    return _AFsaveModel;
}
- (NSMutableArray *)AFviewDataArray{
    if (!_AFviewDataArray) {
        _AFviewDataArray = [[NSMutableArray alloc] init];
    }
    return _AFviewDataArray;
}
- (UITableView *)AFmainTable{
    if (!_AFmainTable) {
        _AFmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _AFmainTable.backgroundColor = AFH_Color(24, 50, 62, 1);
        _AFmainTable.delegate = self;
        _AFmainTable.dataSource = self;
        _AFmainTable.rowHeight = UITableViewAutomaticDimension;
        _AFmainTable.estimatedRowHeight = 55.0f;
        _AFmainTable.tableHeaderView = [[UIView alloc] init];
        _AFmainTable.tableFooterView = [[UIView alloc] init];
        [_AFmainTable registerClass:[AFgamePlanEditTableViewCell class] forCellReuseIdentifier:@"AFgamePlanEditTableViewCell"];
        [_AFmainTable registerClass:[AFgamePlanDateTableViewCell class] forCellReuseIdentifier:@"AFgamePlanDateTableViewCell"];
        [_AFmainTable registerClass:[AFgamePlanSaveTableViewCell class] forCellReuseIdentifier:@"AFgamePlanSaveTableViewCell"];

        [self.view addSubview:_AFmainTable];
        [_AFmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.view);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view);
        }];
        UITapGestureRecognizer *tapGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(AFcloseEdit)];
        [_AFmainTable addGestureRecognizer:tapGes];
        [self.view addGestureRecognizer:tapGes];
    }
    return _AFmainTable;
}
@end
