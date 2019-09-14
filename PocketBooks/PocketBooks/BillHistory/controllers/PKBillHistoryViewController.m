//
//  PKBillHistoryViewController.m
//  PocketBooks
//
//  Created by bykj on 2019/8/28.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PKBillHistoryViewController.h"
#import "PKAddBudgetViewController.h"
#import "PKBillHistoryHeaderView.h"
#import "PKBillHistoryTableViewCell.h"
#import "PKBillHistoryModel.h"
@interface PKBillHistoryViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)UIButton *addButton;
@property(nonatomic, strong)NSMutableDictionary *foldInfoDic;
@property(nonatomic, strong)NSMutableArray *dataArray;
@property(nonatomic, strong)UITableView *mainTable;
@end

@implementation PKBillHistoryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = PKH_Color(244, 245, 246, 1);
    self.title = NSLocalizedString(@"历史", nil);
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self loadData];
}
- (void)PK_setupNavigationItems{
    [super PK_setupNavigationItems];
    [self setNavigationBarItems];
}
- (void)setNavigationBarItems{
    UIBarButtonItem *addButtonItem = [[UIBarButtonItem alloc] initWithCustomView:self.addButton];
    self.navigationItem.rightBarButtonItem = addButtonItem;
}
- (void)loadData{
    for (int i = 0; i < self.dataArray.count; i++) {
        NSMutableDictionary *dic = self.dataArray[i];
        NSMutableArray *arr = dic[@"data"];
        [arr removeAllObjects];
    }
    [self setFold];
    BmobQuery *bquery = [BmobQuery queryWithClassName:@"PKBudget"];
    BmobUser *author = [BmobUser currentUser];
    [bquery whereKey:@"author" equalTo:author];
    //查找GameScore表的数据
    __weak typeof(self) weakSelf = self;
    [bquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
        if (error) {
            [self.mainTable.mj_header endRefreshing];
            [MBProgressHUD PKshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        }else{
            [self.mainTable.mj_header endRefreshing];
            if (array.count) {
                for (int i = (int)(array.count - 1); i > -1; i--) {
                BmobObject *obj = array[i];
                NSDate *date = [obj objectForKey:@"date"];
                NSString *dateString = [PKUIUtilities PKformattedTimeStringWithDate:date format:@"yyyy-MM-dd"];
                NSString *dateStr = [PKUIUtilities PKformattedTimeStringWithDate:date format:@"MM"];
                    NSUInteger section = [dateStr integerValue];
                    
                    PKBillHistoryModel *model = [[PKBillHistoryModel alloc] init];
                    model.dateString = dateString;
                    NSMutableString *string = [[NSMutableString alloc] init];
                    NSArray *array = [obj objectForKey:@"data"];
                    for (int i = 0; i < array.count; i++) {
                        NSDictionary *dic = array[i];
                        [string appendString:[NSString stringWithFormat:@"%@ %@ %@ ",dic[@"title"],dic[@"content"],dic[@"unit"]]];
                    }
                    model.contentString = [string copy];
                    NSMutableDictionary *dic = self.dataArray[section - 1];
                    NSMutableArray *arr = dic[@"data"];
                    [arr addObject:model];
                }
                [weakSelf.mainTable reloadData];
            }else{
                [MBProgressHUD PKshowReminderText:NSLocalizedString(@"暂无数据，请点击加号添加", nil)];
            }
        }
    }];
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return self.dataArray.count;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    NSMutableDictionary *dic = self.dataArray[section];
    NSMutableArray *arr = dic[@"data"];
    NSNumber *num  = self.foldInfoDic[[NSString stringWithFormat:@"%ld",(section + 1)]];
    Boolean fold = [num boolValue];
    if (fold) {
        return arr.count;
    }else{
        return 0;
    }
}
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    PKBillHistoryHeaderView *head = [tableView dequeueReusableHeaderFooterViewWithIdentifier:@"PKBillHistoryHeaderView"];
    head.section = section;
    NSNumber *num  = self.foldInfoDic[[NSString stringWithFormat:@"%ld",(section + 1)]];
    head.fold = [num boolValue];
    switch (section) {
        case 0:
            head.titleLbl.text = NSLocalizedString(@"一月", nil);
            break;
        case 1:
            head.titleLbl.text = NSLocalizedString(@"二月", nil);
            break;
        case 2:
            head.titleLbl.text = NSLocalizedString(@"三月", nil);
            break;
        case 3:
            head.titleLbl.text = NSLocalizedString(@"四月", nil);
            break;
        case 4:
            head.titleLbl.text = NSLocalizedString(@"五月", nil);
            break;
        case 5:
            head.titleLbl.text = NSLocalizedString(@"六月", nil);
            break;
        case 6:
            head.titleLbl.text = NSLocalizedString(@"七月", nil);
            break;
        case 7:
            head.titleLbl.text = NSLocalizedString(@"八月", nil);
            break;
        case 8:
            head.titleLbl.text = NSLocalizedString(@"九月", nil);
            break;
        case 9:
            head.titleLbl.text = NSLocalizedString(@"十月", nil);
            break;
        case 10:
            head.titleLbl.text = NSLocalizedString(@"十一月", nil);
            break;
        case 11:
            head.titleLbl.text = NSLocalizedString(@"十二月", nil);
            break;
        default:
            break;
    }
    __weak typeof(self) weakSelf = self;
    head.tapB = ^(Boolean fold) {
        [weakSelf.foldInfoDic setObject:[NSNumber numberWithBool:fold] forKey:[NSString stringWithFormat:@"%ld",(section + 1)]];
        [weakSelf.mainTable reloadData];
    };
    return head;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSMutableDictionary *dic = self.dataArray[indexPath.section];
    NSMutableArray *arr = dic[@"data"];
    NSNumber *num  = self.foldInfoDic[[NSString stringWithFormat:@"%ld",(indexPath.section + 1)]];
    Boolean fold = [num boolValue];
    if (fold) {
        PKBillHistoryModel *model = arr[indexPath.row];
        PKBillHistoryTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PKBillHistoryTableViewCell" forIndexPath:indexPath];
        cell.model = model;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }else{
        return nil;
    }
}
- (void)addBtnClick:(UIButton *)sender{
    PKAddBudgetViewController *vc = [[PKAddBudgetViewController alloc] init];
    vc.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:vc animated:YES];
}
#pragma mark - 属性懒加载
- (UIButton *)addButton{
    if (!_addButton) {
        _addButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_addButton setImage:[UIImage imageNamed:@"PK_btn_add"] forState:UIControlStateNormal];
        [_addButton setImage:[UIImage imageNamed:@"PK_btn_add"] forState:UIControlStateSelected];
        [_addButton addTarget:self action:@selector(addBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _addButton;
}
- (void)setFold{
            self.foldInfoDic = [[NSMutableDictionary alloc] init];
            [self.foldInfoDic setObject:@YES forKey:@"1"];
            [self.foldInfoDic setObject:@YES forKey:@"2"];
            [self.foldInfoDic setObject:@YES forKey:@"3"];
            [self.foldInfoDic setObject:@YES forKey:@"4"];
            [self.foldInfoDic setObject:@YES forKey:@"5"];
            [self.foldInfoDic setObject:@YES forKey:@"6"];
            [self.foldInfoDic setObject:@YES forKey:@"7"];
            [self.foldInfoDic setObject:@YES forKey:@"8"];
            [self.foldInfoDic setObject:@YES forKey:@"9"];
            [self.foldInfoDic setObject:@YES forKey:@"10"];
            [self.foldInfoDic setObject:@YES forKey:@"11"];
            [self.foldInfoDic setObject:@YES forKey:@"12"];
}
//- (NSMutableDictionary *)foldInfoDic{
//    if (_foldInfoDic == nil) {
//        _foldInfoDic = [[NSMutableDictionary alloc] init];
//        [_foldInfoDic setObject:@NO forKey:@"1"];
//        [_foldInfoDic setObject:@NO forKey:@"2"];
//        [_foldInfoDic setObject:@NO forKey:@"3"];
//        [_foldInfoDic setObject:@NO forKey:@"4"];
//        [_foldInfoDic setObject:@NO forKey:@"5"];
//        [_foldInfoDic setObject:@NO forKey:@"6"];
//        [_foldInfoDic setObject:@NO forKey:@"7"];
//        [_foldInfoDic setObject:@NO forKey:@"8"];
//        [_foldInfoDic setObject:@NO forKey:@"9"];
//        [_foldInfoDic setObject:@NO forKey:@"10"];
//        [_foldInfoDic setObject:@NO forKey:@"11"];
//        [_foldInfoDic setObject:@NO forKey:@"12"];
//    }
//    return _foldInfoDic;
//}
- (NSMutableArray *)dataArray{
    if (!_dataArray) {
        _dataArray = [[NSMutableArray alloc] init];
        NSMutableDictionary *dic0 = [[NSMutableDictionary alloc] init];
        [dic0 setObject:@"1" forKey:@"section"];
        [dic0 setObject:[[NSMutableArray alloc] init] forKey:@"data"];
        [_dataArray addObject:dic0];
        NSMutableDictionary *dic1 = [[NSMutableDictionary alloc] init];
        [dic1 setObject:@"2" forKey:@"section"];
        [dic1 setObject:[[NSMutableArray alloc] init] forKey:@"data"];
        [_dataArray addObject:dic1];
        NSMutableDictionary *dic2 = [[NSMutableDictionary alloc] init];
        [dic2 setObject:@"3" forKey:@"section"];
        [dic2 setObject:[[NSMutableArray alloc] init] forKey:@"data"];
        [_dataArray addObject:dic2];
        NSMutableDictionary *dic3 = [[NSMutableDictionary alloc] init];
        [dic3 setObject:@"4" forKey:@"section"];
        [dic3 setObject:[[NSMutableArray alloc] init] forKey:@"data"];
        [_dataArray addObject:dic3];
        NSMutableDictionary *dic4 = [[NSMutableDictionary alloc] init];
        [dic4 setObject:@"5" forKey:@"section"];
        [dic4 setObject:[[NSMutableArray alloc] init] forKey:@"data"];
        [_dataArray addObject:dic4];
        NSMutableDictionary *dic5 = [[NSMutableDictionary alloc] init];
        [dic5 setObject:@"6" forKey:@"section"];
        [dic5 setObject:[[NSMutableArray alloc] init] forKey:@"data"];
        [_dataArray addObject:dic5];
        NSMutableDictionary *dic6 = [[NSMutableDictionary alloc] init];
        [dic6 setObject:@"7" forKey:@"section"];
        [dic6 setObject:[[NSMutableArray alloc] init] forKey:@"data"];
        [_dataArray addObject:dic6];
        NSMutableDictionary *dic7 = [[NSMutableDictionary alloc] init];
        [dic7 setObject:@"8" forKey:@"section"];
        [dic7 setObject:[[NSMutableArray alloc] init] forKey:@"data"];
        [_dataArray addObject:dic7];
        NSMutableDictionary *dic8 = [[NSMutableDictionary alloc] init];
        [dic8 setObject:@"9" forKey:@"section"];
        [dic8 setObject:[[NSMutableArray alloc] init] forKey:@"data"];
        [_dataArray addObject:dic8];
        NSMutableDictionary *dic9 = [[NSMutableDictionary alloc] init];
        [dic9 setObject:@"10" forKey:@"section"];
        [dic9 setObject:[[NSMutableArray alloc] init] forKey:@"data"];
        [_dataArray addObject:dic9];
        NSMutableDictionary *dic10 = [[NSMutableDictionary alloc] init];
        [dic10 setObject:@"11" forKey:@"section"];
        [dic10 setObject:[[NSMutableArray alloc] init] forKey:@"data"];
        [_dataArray addObject:dic10];
        NSMutableDictionary *dic11 = [[NSMutableDictionary alloc] init];
        [dic11 setObject:@"12" forKey:@"section"];
        [dic11 setObject:[[NSMutableArray alloc] init] forKey:@"data"];
        [_dataArray addObject:dic11];
    }
    return _dataArray;
}
- (UITableView *)mainTable{
    if (!_mainTable) {
        _mainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _mainTable.delegate = self;
        _mainTable.dataSource = self;
        _mainTable.backgroundColor = PKH_Color(244, 245, 246, 1);
        _mainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _mainTable.delegate = self;
        _mainTable.dataSource = self;
        _mainTable.rowHeight = UITableViewAutomaticDimension;
        _mainTable.sectionHeaderHeight = UITableViewAutomaticDimension;
        _mainTable.estimatedRowHeight = 55.0f;
        _mainTable.estimatedSectionHeaderHeight = 55.0f;
        _mainTable.tableHeaderView = [[UIView alloc] init];
        _mainTable.tableFooterView = [[UIView alloc] init];
        [_mainTable registerClass:[PKBillHistoryHeaderView class] forHeaderFooterViewReuseIdentifier:@"PKBillHistoryHeaderView"];
        [_mainTable registerClass:[PKBillHistoryTableViewCell class] forCellReuseIdentifier:@"PKBillHistoryTableViewCell"];
        _mainTable.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(loadData)];
        [self.view addSubview:_mainTable];
        [_mainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_topLayoutGuideBottom);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view).offset(-PKHeightTPKBar);
        }];
    }
    return _mainTable;
}
@end
