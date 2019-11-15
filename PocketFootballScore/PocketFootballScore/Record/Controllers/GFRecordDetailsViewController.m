//
//  GFRecordDetailsViewController.m
//  PocketFootballScore
//
//  Created by bykj on 2019/10/23.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "GFRecordDetailsViewController.h"
#import "GFLoginViewController.h"
#import "GFRecordTableViewCell.h"
#import "GFScorecardModel.h"
@interface GFRecordDetailsViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSMutableArray *GFDataArray;
@property(nonatomic, strong)UITableView *GFmainTable;
@end

@implementation GFRecordDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"当日比赛记录", nil);
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self GFLoadData];
}
- (void)GFLoadData{
    BmobQuery *bquery = [BmobQuery queryWithClassName:@"GFScore"];
    BmobUser *author = [BmobUser currentUser];
    if (author) {
    [bquery whereKey:@"author" equalTo:author];
    //查找GameScore表的数据
    __weak typeof(self) weakSelf = self;
    [bquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
        [weakSelf.GFmainTable.mj_header endRefreshing];
        if (error) {
            [MBProgressHUD GFshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            [weakSelf.GFmainTable reloadData];
        }else{
            [self.GFDataArray removeAllObjects];
            if (array.count) {
                for (int i = (int)(array.count - 1); i > -1; i--) {
                    BmobObject *obj = array[i];
                    NSString *endTimeString = [obj objectForKey:@"GFendTimeString"];
                    NSString *dateSelectedString = [GFUIUtilities GFformattedTimeStringWithDate:self.dateSelected format:@"yyyy/MM/dd"];
                   if ([endTimeString hasPrefix:dateSelectedString]) {
                    GFScorecardModel *model = [[GFScorecardModel alloc] init];
                    model.GFnatureCompetition = [obj objectForKey:@"GFnatureCompetition"];
                    model.GFteamAName = [obj objectForKey:@"GFteamAName"];
                    model.GFteamANameScore = [[obj objectForKey:@"GFteamANameScore"] integerValue];
                    model.GFteamBName = [obj objectForKey:@"GFteamBName"];
                    model.GFteamBNameScore = [[obj objectForKey:@"GFteamBNameScore"] integerValue];
                    model.GFtotalTimeString = [obj objectForKey:@"GFtotalTimeString"];
                    model.GFendTimeString = [obj objectForKey:@"GFendTimeString"];
                    [self.GFDataArray addObject:model];
                    }
                }
                if (!self.GFDataArray.count) {
                    [MBProgressHUD GFshowReminderText:NSLocalizedString(@"无数据", nil)];
                }
                [weakSelf.GFmainTable reloadData];
                }else{
                [MBProgressHUD GFshowReminderText:NSLocalizedString(@"暂无数据", nil)];
                [weakSelf.GFmainTable reloadData];
                }
        }
    }];
    }else{
        [self.GFmainTable.mj_header endRefreshing];
        [MBProgressHUD GFshowReminderText:NSLocalizedString(@"暂无数据", nil)];
        [self.GFmainTable reloadData];
        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:nil message:NSLocalizedString(@"请先登录", nil) preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            GFLoginViewController *loginVC = [GFLoginViewController shareInstance];
            loginVC.type = 2;
            UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
            GFKeyWindow.rootViewController = loginVCNav;
        }];
        [alertVC addAction:cancelAction];
        [alertVC addAction:sureAction];
        [self presentViewController:alertVC animated:YES completion:nil];
    }
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.GFDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    GFScorecardModel *model = self.GFDataArray[indexPath.row];
    GFRecordTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"GFRecordTableViewCell" forIndexPath:indexPath];
    cell.model = model;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
#pragma mark - 属性懒加载
- (NSMutableArray *)GFDataArray{
    if (!_GFDataArray) {
        _GFDataArray = [[NSMutableArray alloc] init];
    }
    return _GFDataArray;
}
- (UITableView *)GFmainTable{
    if (!_GFmainTable) {
        _GFmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _GFmainTable.backgroundColor = [UIColor cyanColor];
        _GFmainTable.delegate = self;
        _GFmainTable.dataSource = self;
        _GFmainTable.rowHeight = UITableViewAutomaticDimension;
        _GFmainTable.estimatedRowHeight = 55.0f;
        _GFmainTable.tableHeaderView = [[UIView alloc] init];
        _GFmainTable.tableFooterView = [[UIView alloc] init];
        [_GFmainTable registerClass:[GFRecordTableViewCell class] forCellReuseIdentifier:@"GFRecordTableViewCell"];
        _GFmainTable.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(GFLoadData)];
        [self.view addSubview:_GFmainTable];
        [_GFmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.view);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view);
        }];
    }
    return _GFmainTable;
}
@end
