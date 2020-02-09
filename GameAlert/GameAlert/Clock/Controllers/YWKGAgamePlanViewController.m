//
//  YWKGAgamePlanViewController.m
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "YWKGAgamePlanViewController.h"
#import "YWKGAClockViewController.h"
#import "YWKGAgamePlanModel.h"
#import "YWKGAgamePlanSaveModel.h"
#import "YWKGAgamePlanEditTableViewCell.h"
#import "YWKGAgamePlanDateTableViewCell.h"
#import "YWKGAgamePlanSaveTableViewCell.h"

@interface YWKGAgamePlanViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSMutableArray *YWKGAviewDataArray;
@property(nonatomic, strong)UITableView *YWKGAmainTable;
@end

@implementation YWKGAgamePlanViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"戒游戏计划", nil);
    [self YWKGAsetContentView];
}
- (void)YWKGAsetContentView{
    YWKGAgamePlanModel *gameAgesModel = [[YWKGAgamePlanModel alloc] init];
    gameAgesModel.YWKGAtype = 0;
    gameAgesModel.YWKGAtitle = NSLocalizedString(@"游戏龄", nil);
    gameAgesModel.YWKGAunit = NSLocalizedString(@"年", nil);
    if (self.objectId.length) {
        gameAgesModel.YWKGAcontent = [NSString stringWithFormat:@"%ld",self.saveModel.YWKGAgameAges];
    }
    gameAgesModel.YWKGAdefaultString = NSLocalizedString(@"请输入游戏龄", nil);
    [self.YWKGAviewDataArray addObject:gameAgesModel];
    
    YWKGAgamePlanModel *timeDrinkModel = [[YWKGAgamePlanModel alloc] init];
    timeDrinkModel.YWKGAtype = 1;
    timeDrinkModel.YWKGAtitle = NSLocalizedString(@"戒游戏时间", nil);
    if (self.objectId.length) {
        timeDrinkModel.YWKGAcontent = [YWKGAUIUtilities YWKGAformattedTimeStringWithDate:self.saveModel.YWKGAtimeGiveGameDate format:@"yyyy/MM/dd"];
    }
    timeDrinkModel.YWKGAdefaultString = NSLocalizedString(@"请选择戒游戏时间", nil);
    [self.YWKGAviewDataArray addObject:timeDrinkModel];
    
    YWKGAgamePlanModel *YWKGAgameEveryDayModel = [[YWKGAgamePlanModel alloc] init];
    YWKGAgameEveryDayModel.YWKGAtype = 0;
    YWKGAgameEveryDayModel.YWKGAtitle = NSLocalizedString(@"每天游戏次数", nil);
    if (self.objectId.length) {
        YWKGAgameEveryDayModel.YWKGAcontent = [NSString stringWithFormat:@"%ld",self.saveModel.YWKGAgameEveryDay];
    }
    YWKGAgameEveryDayModel.YWKGAunit = NSLocalizedString(@"次", nil);
    YWKGAgameEveryDayModel.YWKGAdefaultString = NSLocalizedString(@"请输入每天游戏次数", nil);
    [self.YWKGAviewDataArray addObject:YWKGAgameEveryDayModel];
    
    YWKGAgamePlanModel *YWKGAgameLongModel = [[YWKGAgamePlanModel alloc] init];
    YWKGAgameLongModel.YWKGAtype = 0;
    YWKGAgameLongModel.YWKGAtitle = NSLocalizedString(@"游戏时间", nil);
    if (self.objectId.length) {
        YWKGAgameLongModel.YWKGAcontent = [NSString stringWithFormat:@"%ld",self.saveModel.YWKGAgameLong];
    }
    YWKGAgameLongModel.YWKGAunit = NSLocalizedString(@"小时/次", nil);
    YWKGAgameLongModel.YWKGAdefaultString = NSLocalizedString(@"请输入游戏时间", nil);
    [self.YWKGAviewDataArray addObject:YWKGAgameLongModel];
    
    
    YWKGAgamePlanModel *saveModel = [[YWKGAgamePlanModel alloc] init];
    saveModel.YWKGAtype = 2;
    [self.YWKGAviewDataArray addObject:saveModel];
    
    [self.YWKGAmainTable reloadData];
}
- (void)YWKGAcloseEdit{
    [self.view endEditing:YES];
}
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    [self YWKGAcloseEdit];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.YWKGAviewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    YWKGAgamePlanModel *viewModel = self.YWKGAviewDataArray[indexPath.row];
    if (viewModel.YWKGAtype == 0) {
        YWKGAgamePlanEditTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"YWKGAgamePlanEditTableViewCell" forIndexPath:indexPath];
        cell.model = viewModel;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }else if (viewModel.YWKGAtype == 1){
        YWKGAgamePlanDateTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"YWKGAgamePlanDateTableViewCell" forIndexPath:indexPath];
        cell.model = viewModel;
        __weak typeof(self) weakSelf = self;
        cell.YWKGAgamePlanDateB = ^(YWKGAgamePlanDateTableViewCell * _Nonnull cell) {
            [weakSelf.YWKGAmainTable reloadData];
        };
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }else{
        YWKGAgamePlanSaveTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"YWKGAgamePlanSaveTableViewCell" forIndexPath:indexPath];
        __weak typeof(self) weakSelf = self;
        cell.YWKGAgamePlanSaveB = ^(YWKGAgamePlanSaveTableViewCell * _Nonnull cell) {
            [weakSelf YWKGAcloseEdit];
            [weakSelf YWKGAsave];
        };
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }
}
- (void)YWKGAsave{
    for (int i = 0; i < self.YWKGAviewDataArray.count; i++) {
        YWKGAgamePlanModel *model = self.YWKGAviewDataArray[i];
        if (!model.YWKGAcontent.length && model.YWKGAtype != 2) {
            [MBProgressHUD YWKGAshowReminderText:model.YWKGAdefaultString];
            return;
        }else{
            switch (i) {
                case 0:
                    self.saveModel.YWKGAgameAges = [model.YWKGAcontent integerValue];
                    break;
                case 2:
                self.saveModel.YWKGAgameEveryDay = [model.YWKGAcontent integerValue];
                break;
                case 3:
                self.saveModel.YWKGAgameLong = [model.YWKGAcontent integerValue];
                break;
                default:
                    break;
            }
        }
    }
    NSMutableDictionary *jsonDictionary = [[NSMutableDictionary alloc] initWithDictionary:(NSDictionary *)[self.saveModel yy_modelToJSONObject]];
    [jsonDictionary setObject:[[NSDate alloc] init] forKey:@"YWKGAsaveDate"];
    if (!self.saveModel.YWKGAclockInSAndNumberB.count) {
    NSMutableArray *YWKGAclockInSAndNumberB = [[NSMutableArray alloc] init];
    NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
    NSString *clockInDateString = @"2019/01/01";
    [dic setObject:clockInDateString forKey:@"clockInDate"];
    [dic setObject:[NSNumber numberWithInteger:0] forKey:@"numberGamesPlayed"];//当天喝苏打水瓶数
    [YWKGAclockInSAndNumberB addObject:dic];
    [jsonDictionary setObject:YWKGAclockInSAndNumberB forKey:@"YWKGAclockInSAndNumberB"];
    }
    YWKGAgamePlanModel *model = self.YWKGAviewDataArray[1];
    NSString *dateString = model.YWKGAcontent;
    NSDate *date = [YWKGAUIUtilities YWKGAdateFromString:dateString formate:@"yyyy/MM/dd"];
    [jsonDictionary setObject:date forKey:@"YWKGAtimeGiveGameDate"];
    NSLog(@"jsonDictionary:%@",jsonDictionary);
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
                [self.superVC YWKGAloadData];
                [self.navigationController popViewControllerAnimated:YES];
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
            [self.superVC YWKGAloadData];
            [self.navigationController popViewControllerAnimated:YES];
        } else if (error){
            //发生错误后的动作
            NSLog(@"error:%@",error);
            [MBProgressHUD YWKGAshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        } else {
            [MBProgressHUD YWKGAshowReminderText:NSLocalizedString(@"请稍后重试", nil)];

        }
    }];
    }
}
#pragma mark - 属性懒加载
- (YWKGAgamePlanSaveModel *)saveModel{
    if (!_saveModel) {
        _saveModel = [[YWKGAgamePlanSaveModel alloc] init];
        _saveModel.YWKGAcumulativeNubDays = 0;//累计天数
        _saveModel.YWKGAaccumulativeGames = 0;//累计少玩瓶数
        _saveModel.YWKGAcumulativeAmount = 0;//累计少花钱数
    }
    return _saveModel;
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
        _YWKGAmainTable.delegate = self;
        _YWKGAmainTable.dataSource = self;
        _YWKGAmainTable.rowHeight = UITableViewAutomaticDimension;
        _YWKGAmainTable.estimatedRowHeight = 55.0f;
        _YWKGAmainTable.tableHeaderView = [[UIView alloc] init];
        _YWKGAmainTable.tableFooterView = [[UIView alloc] init];
        [_YWKGAmainTable registerClass:[YWKGAgamePlanEditTableViewCell class] forCellReuseIdentifier:@"YWKGAgamePlanEditTableViewCell"];
        [_YWKGAmainTable registerClass:[YWKGAgamePlanDateTableViewCell class] forCellReuseIdentifier:@"YWKGAgamePlanDateTableViewCell"];
        [_YWKGAmainTable registerClass:[YWKGAgamePlanSaveTableViewCell class] forCellReuseIdentifier:@"YWKGAgamePlanSaveTableViewCell"];

        [self.view addSubview:_YWKGAmainTable];
        [_YWKGAmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.view);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view);
        }];
        UITapGestureRecognizer *tapGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(YWKGAcloseEdit)];
        [_YWKGAmainTable addGestureRecognizer:tapGes];
        [self.view addGestureRecognizer:tapGes];
    }
    return _YWKGAmainTable;
}
@end
