//
//  SDCalendarDiaryViewController.m
//  Simple Diary
//
//  Created by 褚红彪 on 2019/8/10.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "SDCalendarDiaryViewController.h"
#import "SDWriteDiaryDetailViewController.h"
#import "SDShowDiaryTableViewCell.h"
#import "SDWriteDiaryModel.h"
@interface SDCalendarDiaryViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)UITableView *mainTable;
@property(nonatomic, strong)NSMutableArray *dataArray;
@end

@implementation SDCalendarDiaryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSString *dateString = [SDUIUtilities SDformattedTimeStringWithDate:self.date format:@"yyyy-MM-dd"];
    self.title = dateString;
}
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [self loadData];
}
- (void)loadData{
    BmobQuery *bquery = [BmobQuery queryWithClassName:@"Diary"];
    BmobUser *author = [BmobUser currentUser];
    [bquery whereKey:@"author" equalTo:author];
    //查找GameScore表的数据
    [bquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
        if (error) {
            [MBProgressHUD SDshowReminderText:[NSString stringWithFormat:@"%@",error]];
        }else{
            NSMutableArray *tempArray = [[NSMutableArray alloc] init];
            for (int i = (int)(array.count - 1); i > -1; i--) {
                BmobObject *obj = array[i];
                SDWriteDiaryModel *model = [[SDWriteDiaryModel alloc] init];
                model.objectId = [obj objectId];
                model.fontSize = [obj objectForKey:@"fontSize"];
                model.fontRGB = [obj objectForKey:@"fontRGB"];
                model.themeRGB = [obj objectForKey:@"themeRGB"];
                model.location = [obj objectForKey:@"location"];
                model.weather = [obj objectForKey:@"weather"];
                model.content = [obj objectForKey:@"content"];
                model.date = [obj objectForKey:@"date"];
                model.weekDay = [obj objectForKey:@"weekDay"];
                model.imageUrls = [obj objectForKey:@"imageUrls"];
                model.createdAt = [obj createdAt];
                model.updatedAt = [obj updatedAt];
                [tempArray addObject:model];
            }
            [self.dataArray removeAllObjects];
            for (int i = 0; i < tempArray.count; i++) {
                SDWriteDiaryModel *model = tempArray[i];
                NSString *currentDateString = [[model.date componentsSeparatedByString:@" "] objectAtIndex:0];
                NSString *dateString = [SDUIUtilities SDformattedTimeStringWithDate:self.date format:@"yyyy-MM-dd"];
                if ([currentDateString isEqualToString:dateString]) {
                    [self.dataArray addObject:model];
                }
            }
            [self.mainTable.mj_header endRefreshing];
            [self.mainTable reloadData];
        }
    }];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    SDWriteDiaryModel *model = self.dataArray[indexPath.row];
    SDShowDiaryTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"SDShowDiaryTableViewCell" forIndexPath:indexPath];
    cell.model = model;
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    SDWriteDiaryModel *model = self.dataArray[indexPath.row];
    SDWriteDiaryDetailViewController *detailVC = [[SDWriteDiaryDetailViewController alloc] init];
    detailVC.model = model;
    detailVC.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:detailVC animated:YES];
}
- (UITableView *)mainTable{
    if (!_mainTable) {
        _mainTable = [[UITableView alloc] init];
        _mainTable.backgroundColor = SDH_Color(242, 242, 242, 242);
        _mainTable.rowHeight = UITableViewAutomaticDimension;
        _mainTable.estimatedRowHeight = 55.0f;
        _mainTable.delegate = self;
        _mainTable.dataSource = self;
        _mainTable.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(loadData)];
        [_mainTable registerClass:[SDShowDiaryTableViewCell class] forCellReuseIdentifier:@"SDShowDiaryTableViewCell"];
        _mainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        [self.view addSubview:_mainTable];
        [_mainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.view);
            make.top.equalTo(self.mas_topLayoutGuideBottom);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view);
        }];
    }
    return _mainTable;
}
- (NSMutableArray *)dataArray{
    if (!_dataArray) {
        _dataArray = [[NSMutableArray alloc] init];
    }
    return _dataArray;
}
@end
