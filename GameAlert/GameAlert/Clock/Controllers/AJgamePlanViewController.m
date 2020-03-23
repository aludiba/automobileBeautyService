//
//  AJgamePlanViewController.m
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AJgamePlanViewController.h"
#import "AJClockViewController.h"
#import "AJgamePlanModel.h"
#import "AJgamePlanSaveModel.h"
#import "AJgamePlanEditTableViewCell.h"
#import "AJgamePlanDateTableViewCell.h"
#import "AJgamePlanSaveTableViewCell.h"

@interface AJgamePlanViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSMutableArray *AJviewDataArray;
@property(nonatomic, strong)UITableView *AJmainTable;
@end

@implementation AJgamePlanViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"戒游戏计划", nil);
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self AJsetContentView];
}
- (void)AJsetContentView{
    AJgamePlanModel *gameAgesModel = [[AJgamePlanModel alloc] init];
    gameAgesModel.AJtype = 0;
    gameAgesModel.AJtitle = NSLocalizedString(@"游戏龄", nil);
    gameAgesModel.AJunit = NSLocalizedString(@"年", nil);
    if (self.AJobjectId.length) {
        gameAgesModel.AJcontent = [NSString stringWithFormat:@"%ld",self.AJsaveModel.AJgameAges];
    }
    gameAgesModel.AJdefaultString = NSLocalizedString(@"请输入游戏龄", nil);
    [self.AJviewDataArray addObject:gameAgesModel];
    
    AJgamePlanModel *timeDrinkModel = [[AJgamePlanModel alloc] init];
    timeDrinkModel.AJtype = 1;
    timeDrinkModel.AJtitle = NSLocalizedString(@"戒游戏时间", nil);
    if (self.AJobjectId.length) {
        timeDrinkModel.AJcontent = [AJUIUtilities AJformattedTimeStringWithDate:self.AJsaveModel.AJtimeGiveGameDate format:@"yyyy/MM/dd"];
    }
    timeDrinkModel.AJdefaultString = NSLocalizedString(@"请选择戒游戏时间", nil);
    [self.AJviewDataArray addObject:timeDrinkModel];
    
    AJgamePlanModel *AJgameEveryDayModel = [[AJgamePlanModel alloc] init];
    AJgameEveryDayModel.AJtype = 0;
    AJgameEveryDayModel.AJtitle = NSLocalizedString(@"每天游戏次数", nil);
    if (self.AJobjectId.length) {
        AJgameEveryDayModel.AJcontent = [NSString stringWithFormat:@"%ld",self.AJsaveModel.AJgameEveryDay];
    }
    AJgameEveryDayModel.AJunit = NSLocalizedString(@"次", nil);
    AJgameEveryDayModel.AJdefaultString = NSLocalizedString(@"请输入每天游戏次数", nil);
    [self.AJviewDataArray addObject:AJgameEveryDayModel];
    
    AJgamePlanModel *AJgameLongModel = [[AJgamePlanModel alloc] init];
    AJgameLongModel.AJtype = 0;
    AJgameLongModel.AJtitle = NSLocalizedString(@"游戏时间", nil);
    if (self.AJobjectId.length) {
        AJgameLongModel.AJcontent = [NSString stringWithFormat:@"%ld",self.AJsaveModel.AJgameLong];
    }
    AJgameLongModel.AJunit = NSLocalizedString(@"小时/次", nil);
    AJgameLongModel.AJdefaultString = NSLocalizedString(@"请输入游戏时间", nil);
    [self.AJviewDataArray addObject:AJgameLongModel];
    
    
    AJgamePlanModel *saveModel = [[AJgamePlanModel alloc] init];
    saveModel.AJtype = 2;
    [self.AJviewDataArray addObject:saveModel];
    
    [self.AJmainTable reloadData];
}
- (void)AJcloseEdit{
    [self.view endEditing:YES];
}
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    [self AJcloseEdit];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.AJviewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    AJgamePlanModel *viewModel = self.AJviewDataArray[indexPath.row];
    if (viewModel.AJtype == 0) {
        AJgamePlanEditTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"AJgamePlanEditTableViewCell" forIndexPath:indexPath];
        cell.AJmodel = viewModel;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }else if (viewModel.AJtype == 1){
        AJgamePlanDateTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"AJgamePlanDateTableViewCell" forIndexPath:indexPath];
        cell.AJmodel = viewModel;
        __weak typeof(self) weakSelf = self;
        cell.AJgamePlanDateB = ^(AJgamePlanDateTableViewCell * _Nonnull cell) {
            [weakSelf.AJmainTable reloadData];
        };
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }else{
        AJgamePlanSaveTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"AJgamePlanSaveTableViewCell" forIndexPath:indexPath];
        __weak typeof(self) weakSelf = self;
        cell.AJgamePlanSaveB = ^(AJgamePlanSaveTableViewCell * _Nonnull cell) {
            [weakSelf AJcloseEdit];
            [weakSelf AJsave];
        };
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }
}
- (void)AJsave{
    for (int i = 0; i < self.AJviewDataArray.count; i++) {
        AJgamePlanModel *model = self.AJviewDataArray[i];
        if (!model.AJcontent.length && model.AJtype != 2) {
            [MBProgressHUD AJshowReminderText:model.AJdefaultString];
            return;
        }else{
            switch (i) {
                case 0:
                    self.AJsaveModel.AJgameAges = [model.AJcontent integerValue];
                    break;
                case 2:
                    self.AJsaveModel.AJgameEveryDay = [model.AJcontent integerValue];
                break;
                case 3:
                    self.AJsaveModel.AJgameLong = [model.AJcontent integerValue];
                break;
                default:
                    break;
            }
        }
    }
    NSMutableDictionary *jsonDictionary = [[NSMutableDictionary alloc] initWithDictionary:(NSDictionary *)[self.AJsaveModel yy_modelToJSONObject]];
    [jsonDictionary setObject:[[NSDate alloc] init] forKey:@"AJsaveDate"];
    if (!self.AJsaveModel.AJclockInSAndNumberB.count) {
    NSMutableArray *AJclockInSAndNumberB = [[NSMutableArray alloc] init];
    NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
    NSString *clockInDateString = @"2019/01/01";
    [dic setObject:clockInDateString forKey:@"clockInDate"];
    [dic setObject:[NSNumber numberWithInteger:0] forKey:@"numberGamesPlayed"];//当天喝苏打水瓶数
    [AJclockInSAndNumberB addObject:dic];
    [jsonDictionary setObject:AJclockInSAndNumberB forKey:@"AJclockInSAndNumberB"];
    }
    AJgamePlanModel *model = self.AJviewDataArray[1];
    NSString *dateString = model.AJcontent;
    NSDate *date = [AJUIUtilities AJdateFromString:dateString formate:@"yyyy/MM/dd"];
    [jsonDictionary setObject:date forKey:@"AJtimeGiveGameDate"];
    NSLog(@"jsonDictionary:%@",jsonDictionary);
    if (self.AJobjectId.length) {
        AVObject *diary = [AVObject objectWithoutDataWithClassName:@"AJgamePlan" objectId:self.AJobjectId];
        for (NSString *key in jsonDictionary.allKeys) {
            [diary setObject:[jsonDictionary objectForKey:key]  forKey:key];
        }
        AVUser *author = [AVUser currentUser];
        [diary setObject:author forKey:@"author"];
        [diary saveInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
            if (isSuccessful) {
                //创建成功后的动作
                [MBProgressHUD AJshowReminderText:NSLocalizedString(@"更新成功", nil)];
                [self.AJsuperVC AJloadData];
                [self.navigationController popViewControllerAnimated:YES];
            } else if (error){
                //发生错误后的动作
                NSLog(@"error:%@",error);
                [MBProgressHUD AJshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            } else {
                [MBProgressHUD AJshowReminderText:NSLocalizedString(@"请稍后重试", nil)];

            }
        }];
    }else{
    AVObject *diary = [AVObject objectWithClassName:@"AJgamePlan"];
    for (NSString *key in jsonDictionary.allKeys) {
        [diary setObject:[jsonDictionary objectForKey:key]  forKey:key];
    }
    AVUser *author = [AVUser currentUser];
    [diary setObject:author forKey:@"author"];
    [diary saveInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            //创建成功后的动作
            [MBProgressHUD AJshowReminderText:NSLocalizedString(@"保存成功", nil)];
            [self.AJsuperVC AJloadData];
            [self.navigationController popViewControllerAnimated:YES];
        } else if (error){
            //发生错误后的动作
            NSLog(@"error:%@",error);
            [MBProgressHUD AJshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        } else {
            [MBProgressHUD AJshowReminderText:NSLocalizedString(@"请稍后重试", nil)];

        }
    }];
    }
}
#pragma mark - 属性懒加载
- (AJgamePlanSaveModel *)AJsaveModel{
    if (!_AJsaveModel) {
        _AJsaveModel = [[AJgamePlanSaveModel alloc] init];
        _AJsaveModel.AJcumulativeNubDays = 0;//累计天数
        _AJsaveModel.AJaccumulativeGames = 0;//累计少玩瓶数
        _AJsaveModel.AJcumulativeAmount = 0;//累计少花钱数
    }
    return _AJsaveModel;
}
- (NSMutableArray *)AJviewDataArray{
    if (!_AJviewDataArray) {
        _AJviewDataArray = [[NSMutableArray alloc] init];
    }
    return _AJviewDataArray;
}
- (UITableView *)AJmainTable{
    if (!_AJmainTable) {
        _AJmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _AJmainTable.backgroundColor = AJH_Color(44, 77, 93, 0.7);
        _AJmainTable.delegate = self;
        _AJmainTable.dataSource = self;
        _AJmainTable.rowHeight = UITableViewAutomaticDimension;
        _AJmainTable.estimatedRowHeight = 55.0f;
        _AJmainTable.tableHeaderView = [[UIView alloc] init];
        _AJmainTable.tableFooterView = [[UIView alloc] init];
        [_AJmainTable registerClass:[AJgamePlanEditTableViewCell class] forCellReuseIdentifier:@"AJgamePlanEditTableViewCell"];
        [_AJmainTable registerClass:[AJgamePlanDateTableViewCell class] forCellReuseIdentifier:@"AJgamePlanDateTableViewCell"];
        [_AJmainTable registerClass:[AJgamePlanSaveTableViewCell class] forCellReuseIdentifier:@"AJgamePlanSaveTableViewCell"];

        [self.view addSubview:_AJmainTable];
        [_AJmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.view);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view);
        }];
        UITapGestureRecognizer *tapGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(AJcloseEdit)];
        [_AJmainTable addGestureRecognizer:tapGes];
        [self.view addGestureRecognizer:tapGes];
    }
    return _AJmainTable;
}
@end
