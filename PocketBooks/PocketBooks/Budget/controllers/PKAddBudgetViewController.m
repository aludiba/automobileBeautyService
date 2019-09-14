//
//  PKAddBudgetViewController.m
//  PocketBooks
//
//  Created by bykj on 2019/9/4.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PKAddBudgetViewController.h"
#import "PKAddBudgetTableViewCell.h"
#import "PKBudgetModel.h"
@interface PKAddBudgetViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSMutableArray *dataArray;
@property(nonatomic, strong)UITableView *mainTable;
@property(nonatomic, copy)NSString *objectId;
@property(nonatomic, copy)NSString *unit;//金额单位
@property(nonatomic, strong)UIButton *editButton;
@property(nonatomic, copy)NSString *nowTimeStampString;

@end

@implementation PKAddBudgetViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = PKH_Color(244, 245, 246, 1);
    self.title = NSLocalizedString(@"当天预算", nil);
    NSDate *nowDate = [[NSDate alloc] init];
    self.nowTimeStampString = [PKUIUtilities PKformattedTimeStringWithDate:nowDate format:@"yyyyMM"];
    [self loadInitData];
}
- (void)PK_setupNavigationItems{
    [super PK_setupNavigationItems];
    [self setNavigationBarItems];
}
- (void)setNavigationBarItems{
    UIBarButtonItem *editButtonItem = [[UIBarButtonItem alloc] initWithCustomView:self.editButton];
    self.navigationItem.rightBarButtonItem = editButtonItem;
}
- (void)loadInitData{
    BmobQuery *bquery = [BmobQuery queryWithClassName:@"PKBudget"];
    BmobUser *author = [BmobUser currentUser];
    [bquery whereKey:@"author" equalTo:author];
    //查找GameScore表的数据
    __weak typeof(self) weakSelf = self;
    [bquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
        if (error) {
            [MBProgressHUD PKshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            self.editButton.hidden = NO;
            [self loadData];
        }else{
            if (array.count) {
                BmobObject *obj = [array lastObject];
                NSDate *date = [obj objectForKey:@"date"];
                NSString *dateString = [PKUIUtilities PKformattedTimeStringWithDate:date format:@"yyyy-MM-dd"];
                NSDate *nowDate = [[NSDate alloc] init];
                NSString *nowDateString = [PKUIUtilities PKformattedTimeStringWithDate:nowDate format:@"yyyy-MM-dd"];
                if ([dateString isEqualToString:nowDateString]) {
                    weakSelf.objectId = [obj objectId];
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
                    [self loadData];
                }
            }else{
                [self loadData];
            }
        }
    }];
}
- (void)loadData{
    BmobQuery *bquery = [BmobQuery queryWithClassName:@"PKCategory"];
    BmobUser *author = [BmobUser currentUser];
    [bquery whereKey:@"author" equalTo:author];
    //查找GameScore表的数据
    __weak typeof(self) weakSelf = self;
    [bquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
        if (error) {
            [MBProgressHUD PKshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            [self.navigationController popViewControllerAnimated:YES];
            //            [self loadDataCategory];
        }else{
            if (array.count) {
                [weakSelf.dataArray removeAllObjects];
                for (int i = 0; i < array.count; i++) {
                    BmobObject *obj = array[i];
                    NSString *timeStamp = [obj objectForKey:@"timeStamp"];
                    if ([timeStamp isEqualToString:self.nowTimeStampString]) {
                NSArray *dataArray  = [obj objectForKey:@"data"];
                for (int i = 0;i < dataArray.count; i++) {
                    NSDictionary *dic = dataArray[i];
                    PKBudgetModel *model = [[PKBudgetModel alloc] init];
                    model.unit = [dic objectForKey:@"unit"];
                    model.code = [[dic objectForKey:@"code"] integerValue];
                    model.limits = [dic objectForKey:@"content"];
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
                  }
                }
                if (self.dataArray.count) {
                    [weakSelf.mainTable reloadData];
                }else{
                    self.editButton.hidden = YES;
                    [MBProgressHUD PKshowReminderText:NSLocalizedString(@"暂时无法添加预算", nil)];
                    
                }
            }else{
                self.editButton.hidden = YES;
                [MBProgressHUD PKshowReminderText:NSLocalizedString(@"暂无数据", nil)];
            }
        }
    }];
}
#pragma mark - 编辑完成
- (void)btnClick:(UIButton *)sender{
    if (self.objectId.length) {
        [self setUpdateBudget];
    }else{
        [self setNewBudget];
    }
}
- (void)setUpdateBudget{
    NSMutableArray *tempArray = [[NSMutableArray alloc] init];
    for (int i = 0; i < self.dataArray.count; i++) {
        PKBudgetModel *selectModel = self.dataArray[i];
        NSDictionary *jsonDictionary = (NSDictionary *)[selectModel yy_modelToJSONObject];
        [tempArray addObject:jsonDictionary];
    }
    NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
    NSDate *date = [[NSDate alloc] init];
    [dic setObject:date forKey:@"date"];
    [dic setObject:tempArray forKey:@"data"];
    BmobObject *diary = [BmobObject objectWithoutDataWithClassName:@"PKBudget" objectId:self.objectId];
    [diary saveAllWithDictionary:dic];
    BmobUser *author = [BmobUser currentUser];
    [diary setObject:author forKey:@"author"];
    [diary saveAllWithDictionary:dic];
    [diary updateInBackgroundWithResultBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            //创建成功后的动作
            [self.navigationController popViewControllerAnimated:YES];
        } else if (error){
            //发生错误后的动作
            [MBProgressHUD PKshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        } else {
            //            [MBProgressHUD PKshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
        }
    }];
}
- (void)setNewBudget{
    NSMutableArray *tempArray = [[NSMutableArray alloc] init];
    for (int i = 0; i < self.dataArray.count; i++) {
        PKBudgetModel *selectModel = self.dataArray[i];
        NSDictionary *jsonDictionary = (NSDictionary *)[selectModel yy_modelToJSONObject];
        [tempArray addObject:jsonDictionary];
    }
    NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
    NSDate *date = [[NSDate alloc] init];
    [dic setObject:date forKey:@"date"];
    [dic setObject:tempArray forKey:@"data"];
    BmobObject *diary = [BmobObject objectWithClassName:@"PKBudget"];
    [diary saveAllWithDictionary:dic];
    BmobUser *author = [BmobUser currentUser];
    [diary setObject:author forKey:@"author"];
    [diary saveInBackgroundWithResultBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            //创建成功后的动作
            [self.navigationController popViewControllerAnimated:YES];
        } else if (error){
            //发生错误后的动作
            [MBProgressHUD PKshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        } else {
            //            [MBProgressHUD PKshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
        }
    }];
}
- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate{
    [self.view endEditing:YES];
}
- (void)closeKeyBoard{
    [self.view endEditing:YES];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    PKBudgetModel *model = self.dataArray[indexPath.row];
    PKAddBudgetTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PKAddBudgetTableViewCell" forIndexPath:indexPath];
    if (self.editButton.isHidden == YES) {
        cell.contentText.userInteractionEnabled = NO;
    }else{
        cell.contentText.userInteractionEnabled = YES;
    }
    cell.model = model;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
#pragma mark - 属性懒加载
- (UIButton *)editButton{
    if (!_editButton) {
        _editButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_editButton setTitle:NSLocalizedString(@"完成", nil) forState:UIControlStateNormal];
        [_editButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_editButton.titleLabel setFont:[UIFont systemFontOfSize:15]];
        [_editButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _editButton;
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
        [_mainTable registerClass:[PKAddBudgetTableViewCell class] forCellReuseIdentifier:@"PKAddBudgetTableViewCell"];
        [self.view addSubview:_mainTable];
        [_mainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_topLayoutGuideBottom).offset(10);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view);
        }];
        UITapGestureRecognizer *tapGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(closeKeyBoard)];
        [self.view addGestureRecognizer:tapGes];
    }
    return _mainTable;
}
@end
