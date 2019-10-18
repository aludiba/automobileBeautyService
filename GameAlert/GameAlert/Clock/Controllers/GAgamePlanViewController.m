//
//  GAgamePlanViewController.m
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "GAgamePlanViewController.h"
#import "GAClockViewController.h"
#import "GAgamePlanModel.h"
#import "GAgamePlanSaveModel.h"
#import "GAgamePlanEditTableViewCell.h"
#import "GAgamePlanDateTableViewCell.h"
#import "GAgamePlanSaveTableViewCell.h"

@interface GAgamePlanViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSMutableArray *GAviewDataArray;
@property(nonatomic, strong)UITableView *GAmainTable;
@end

@implementation GAgamePlanViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"戒苏打水计划", nil);
    [self GAsetContentView];
}
- (void)GAsetContentView{
    GAgamePlanModel *gameAgesModel = [[GAgamePlanModel alloc] init];
    gameAgesModel.GAtype = 0;
    gameAgesModel.GAtitle = NSLocalizedString(@"苏打水龄", nil);
    gameAgesModel.GAunit = NSLocalizedString(@"年", nil);
    if (self.objectId.length) {
        gameAgesModel.GAcontent = [NSString stringWithFormat:@"%ld",self.saveModel.GAgameAges];
    }
    gameAgesModel.GAdefaultString = NSLocalizedString(@"请输入苏打水龄", nil);
    [self.GAviewDataArray addObject:gameAgesModel];
    
    GAgamePlanModel *timeDrinkModel = [[GAgamePlanModel alloc] init];
    timeDrinkModel.GAtype = 1;
    timeDrinkModel.GAtitle = NSLocalizedString(@"戒苏打水时间", nil);
    if (self.objectId.length) {
        timeDrinkModel.GAcontent = [GAUIUtilities GAformattedTimeStringWithDate:self.saveModel.GAtimeGiveGameDate format:@"yyyy-MM-dd"];
    }
    timeDrinkModel.GAdefaultString = NSLocalizedString(@"请选择戒苏打水时间", nil);
    [self.GAviewDataArray addObject:timeDrinkModel];
    
    GAgamePlanModel *GAgameEveryDayModel = [[GAgamePlanModel alloc] init];
    GAgameEveryDayModel.GAtype = 0;
    GAgameEveryDayModel.GAtitle = NSLocalizedString(@"每天苏打水量", nil);
    if (self.objectId.length) {
        GAgameEveryDayModel.GAcontent = [NSString stringWithFormat:@"%ld",self.saveModel.GAgameEveryDay];
    }
    GAgameEveryDayModel.GAunit = NSLocalizedString(@"瓶", nil);
    GAgameEveryDayModel.GAdefaultString = NSLocalizedString(@"请输入每天苏打水量", nil);
    [self.GAviewDataArray addObject:GAgameEveryDayModel];
    
    GAgamePlanModel *GAgameLongModel = [[GAgamePlanModel alloc] init];
    GAgameLongModel.GAtype = 0;
    GAgameLongModel.GAtitle = NSLocalizedString(@"苏打水价格", nil);
    if (self.objectId.length) {
        GAgameLongModel.GAcontent = [NSString stringWithFormat:@"%ld",self.saveModel.GAgameLong];
    }
    GAgameLongModel.GAunit = NSLocalizedString(@"元/瓶", nil);
    GAgameLongModel.GAdefaultString = NSLocalizedString(@"请输入苏打水价格", nil);
    [self.GAviewDataArray addObject:GAgameLongModel];
    
    
    GAgamePlanModel *saveModel = [[GAgamePlanModel alloc] init];
    saveModel.GAtype = 2;
    [self.GAviewDataArray addObject:saveModel];
    
    [self.GAmainTable reloadData];
}
- (void)GAcloseEdit{
    [self.view endEditing:YES];
}
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    [self GAcloseEdit];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.GAviewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    GAgamePlanModel *viewModel = self.GAviewDataArray[indexPath.row];
    if (viewModel.GAtype == 0) {
        GAgamePlanEditTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"GAgamePlanEditTableViewCell" forIndexPath:indexPath];
        cell.model = viewModel;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }else if (viewModel.GAtype == 1){
        GAgamePlanDateTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"GAgamePlanDateTableViewCell" forIndexPath:indexPath];
        cell.model = viewModel;
        __weak typeof(self) weakSelf = self;
        cell.GAgamePlanDateB = ^(GAgamePlanDateTableViewCell * _Nonnull cell) {
            [weakSelf.GAmainTable reloadData];
        };
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }else{
        GAgamePlanSaveTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"GAgamePlanSaveTableViewCell" forIndexPath:indexPath];
        __weak typeof(self) weakSelf = self;
        cell.GAgamePlanSaveB = ^(GAgamePlanSaveTableViewCell * _Nonnull cell) {
            [weakSelf GAcloseEdit];
            [weakSelf GAsave];
        };
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }
}
- (void)GAsave{
    for (int i = 0; i < self.GAviewDataArray.count; i++) {
        GAgamePlanModel *model = self.GAviewDataArray[i];
        if (!model.GAcontent.length && model.GAtype != 2) {
            [MBProgressHUD GAshowReminderText:model.GAdefaultString];
            return;
        }else{
            switch (i) {
                case 0:
                    self.saveModel.GAgameAges = [model.GAcontent integerValue];
                    break;
                case 2:
                self.saveModel.GAgameEveryDay = [model.GAcontent integerValue];
                break;
                case 3:
                self.saveModel.GAgameLong = [model.GAcontent integerValue];
                break;
                default:
                    break;
            }
        }
    }
    NSMutableDictionary *jsonDictionary = [[NSMutableDictionary alloc] initWithDictionary:(NSDictionary *)[self.saveModel yy_modelToJSONObject]];
    [jsonDictionary setObject:[[NSDate alloc] init] forKey:@"GAsaveDate"];
    if (!self.saveModel.GAclockInSAndNumberB.count) {
    NSMutableArray *GAclockInSAndNumberB = [[NSMutableArray alloc] init];
    NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
    NSString *clockInDateString = @"2019-01-01";
    [dic setObject:clockInDateString forKey:@"clockInDate"];
    [dic setObject:[NSNumber numberWithInteger:0] forKey:@"numberGamesPlayed"];//当天喝苏打水瓶数
    [GAclockInSAndNumberB addObject:dic];
    [jsonDictionary setObject:GAclockInSAndNumberB forKey:@"GAclockInSAndNumberB"];
    }
    GAgamePlanModel *model = self.GAviewDataArray[1];
    NSString *dateString = model.GAcontent;
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
                [self.superVC loadData];
                [self.navigationController popViewControllerAnimated:YES];
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
            [self.superVC loadData];
            [self.navigationController popViewControllerAnimated:YES];
        } else if (error){
            //发生错误后的动作
            NSLog(@"error:%@",error);
            [MBProgressHUD GAshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        } else {
            [MBProgressHUD GAshowReminderText:NSLocalizedString(@"请稍后重试", nil)];

        }
    }];
    }
}
#pragma mark - 属性懒加载
- (GAgamePlanSaveModel *)saveModel{
    if (!_saveModel) {
        _saveModel = [[GAgamePlanSaveModel alloc] init];
        _saveModel.GAcumulativeNubDays = 0;//累计天数
        _saveModel.GAaccumulativeGames = 0;//累计少喝瓶数
        _saveModel.GAcumulativeAmount = 0;//累计少花钱数
    }
    return _saveModel;
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
        _GAmainTable.backgroundColor = GAH_Color(244, 245, 246, 1);
        _GAmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _GAmainTable.delegate = self;
        _GAmainTable.dataSource = self;
        _GAmainTable.rowHeight = UITableViewAutomaticDimension;
        _GAmainTable.estimatedRowHeight = 55.0f;
        _GAmainTable.tableHeaderView = [[UIView alloc] init];
        _GAmainTable.tableFooterView = [[UIView alloc] init];
        [_GAmainTable registerClass:[GAgamePlanEditTableViewCell class] forCellReuseIdentifier:@"GAgamePlanEditTableViewCell"];
        [_GAmainTable registerClass:[GAgamePlanDateTableViewCell class] forCellReuseIdentifier:@"GAgamePlanDateTableViewCell"];
        [_GAmainTable registerClass:[GAgamePlanSaveTableViewCell class] forCellReuseIdentifier:@"GAgamePlanSaveTableViewCell"];

        [self.view addSubview:_GAmainTable];
        [_GAmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.view);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view);
        }];
        UITapGestureRecognizer *tapGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(GAcloseEdit)];
        [_GAmainTable addGestureRecognizer:tapGes];
        [self.view addGestureRecognizer:tapGes];
    }
    return _GAmainTable;
}
@end
