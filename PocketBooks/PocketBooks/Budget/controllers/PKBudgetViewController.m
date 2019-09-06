//
//  PKBudgetViewController.m
//  PocketBooks
//
//  Created by bykj on 2019/8/28.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PKBudgetViewController.h"
#import "PKAddBudgetViewController.h"
#import "PKBudgetTableViewCell.h"
#import "PKBudgetModel.h"

@interface PKBudgetViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSMutableArray *dataArray;
@property(nonatomic, strong)UITableView *mainTable;
@property(nonatomic, strong)UIButton *addButton;
@property(nonatomic, copy)NSString *nowTimeStampString;
@end

@implementation PKBudgetViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = PKH_Color(244, 245, 246, 1);
    self.title = NSLocalizedString(@"当天预算", nil);
    NSDate *nowDate = [[NSDate alloc] init];
    self.nowTimeStampString = [PKUIUtilities PKformattedTimeStringWithDate:nowDate format:@"yyyyMM"];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self loadInitData];
}
- (void)PK_setupNavigationItems{
    [super PK_setupNavigationItems];
    [self setNavigationBarItems];
}
- (void)setNavigationBarItems{
    UIBarButtonItem *addButtonItem = [[UIBarButtonItem alloc] initWithCustomView:self.addButton];
    self.navigationItem.rightBarButtonItem = addButtonItem;
}
- (void)loadInitData{
    [self.dataArray removeAllObjects];

    BmobQuery *bquery = [BmobQuery queryWithClassName:@"PKBudget"];
    BmobUser *author = [BmobUser currentUser];
    [bquery whereKey:@"author" equalTo:author];
    //查找GameScore表的数据
    __weak typeof(self) weakSelf = self;
    [bquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
        if (error) {
            [self.mainTable.mj_header endRefreshing];
            [MBProgressHUD PKshowReminderText:NSLocalizedString(@"暂无数据，请点击加号添加", nil)];
        }else{
            [self.mainTable.mj_header endRefreshing];
            if (array.count) {
                BmobObject *obj = [array lastObject];
                NSDate *date = [obj objectForKey:@"date"];
                NSString *dateString = [PKUIUtilities PKformattedTimeStringWithDate:date format:@"yyyy-MM-dd"];
                NSDate *nowDate = [[NSDate alloc] init];
                NSString *nowDateString = [PKUIUtilities PKformattedTimeStringWithDate:nowDate format:@"yyyy-MM-dd"];
                if ([dateString isEqualToString:nowDateString]) {
                    NSArray *dataArray  = [obj objectForKey:@"data"];
                    for (int i = 0;i < dataArray.count; i++) {
                        NSDictionary *dic = dataArray[i];
                        PKBudgetModel *model = [[PKBudgetModel alloc] init];
                        model.content = [dic objectForKey:@"content"];
                        model.unit = [dic objectForKey:@"unit"];
                        model.code = [[dic objectForKey:@"code"] integerValue];
                        model.limits = [dic objectForKey:@"limits"];
                        switch (model.code) {
                            case 000:
                                model.title = NSLocalizedString(@"服饰", nil);
                                break;
                            case 001:
                                model.title = NSLocalizedString(@"食品", nil);
                                break;
                            case 002:
                                model.title = NSLocalizedString(@"房屋", nil);
                                break;
                            case 003:
                                model.title = NSLocalizedString(@"交通", nil);
                                break;
                            case 004:
                                model.title = NSLocalizedString(@"健康", nil);
                                break;
                            case 005:
                                model.title = NSLocalizedString(@"空闲", nil);
                                break;
                            case 006:
                                model.title = NSLocalizedString(@"网费", nil);
                                break;
                            case 007:
                                model.title = NSLocalizedString(@"手机", nil);
                                break;
                            case 071:
                                model.title = NSLocalizedString(@"水费", nil);
                                break;
                            case 072:
                                model.title = NSLocalizedString(@"电费", nil);
                                break;
                            case 010:
                                model.title = NSLocalizedString(@"取暖费", nil);
                                break;
                            case 011:
                                model.title = NSLocalizedString(@"物业", nil);
                                break;
                            case 012:
                                model.title = NSLocalizedString(@"车位", nil);
                                break;
                            case 013:
                                model.title = NSLocalizedString(@"装修", nil);
                                break;
                            case 014:
                                model.title = NSLocalizedString(@"家电", nil);
                                break;
                            case 015:
                                model.title = NSLocalizedString(@"服务", nil);
                                break;
                            case 016:
                                model.title = NSLocalizedString(@"家居", nil);
                                break;
                            case 017:
                                model.title = NSLocalizedString(@"其它", nil);
                                break;
                            default:
                                break;
                        }
                        [weakSelf.dataArray addObject:model];
                    }
                    [weakSelf.mainTable reloadData];
                }else{
                    [MBProgressHUD PKshowReminderText:NSLocalizedString(@"暂无数据，请点击加号添加", nil)];
                }
            }else{
                [MBProgressHUD PKshowReminderText:NSLocalizedString(@"暂无数据，请点击加号添加", nil)];
            }
        }
    }];
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    PKBudgetModel *model = self.dataArray[indexPath.row];
    PKBudgetTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PKBudgetTableViewCell" forIndexPath:indexPath];
    cell.model = model;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
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
- (NSMutableArray *)dataArray{
    if (!_dataArray) {
        _dataArray = [[NSMutableArray alloc] init];
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
        _mainTable.estimatedRowHeight = 55.0f;
        _mainTable.tableHeaderView = [[UIView alloc] init];
        _mainTable.tableFooterView = [[UIView alloc] init];
        [_mainTable registerClass:[PKBudgetTableViewCell class] forCellReuseIdentifier:@"PKBudgetTableViewCell"];
        _mainTable.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(loadInitData)];
        [self.view addSubview:_mainTable];
        [_mainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_topLayoutGuideBottom).offset(10);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view).offset(-PKHeightTPKBar);
        }];
    }
    return _mainTable;
}
@end
