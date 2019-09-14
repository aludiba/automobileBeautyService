//
//  PKLimitesMensuellesViewController.m
//  PocketBooks
//
//  Created by bykj on 2019/8/29.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PKLimitesMensuellesViewController.h"
#import "PKLimitesMensuellesTableViewCell.h"
#import "PKLimitesMensuellesModel.h"

@interface PKLimitesMensuellesViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, assign)Boolean isEdit;
@property(nonatomic, assign)NSUInteger totalAmount;
@property(nonatomic, copy)NSString *objectId;
@property(nonatomic, strong)UILabel *totalAmountLbl;
@property(nonatomic, strong)UIButton *editButton;
@property(nonatomic, copy)NSString *unit;//金额单位
@property(nonatomic, strong)NSMutableArray *viewDataArray;
@property(nonatomic, strong)UITableView *mainTable;
@property(nonatomic, copy)NSString *nowTimeStampString;
@end

@implementation PKLimitesMensuellesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"每月限额", nil);
    NSDate *nowDate = [[NSDate alloc] init];
    self.nowTimeStampString = [PKUIUtilities PKformattedTimeStringWithDate:nowDate format:@"yyyyMM"];
    
    self.totalAmount = 0;
    NSArray *languageArry = [NSLocale preferredLanguages];
    NSString *currentLanguage = [languageArry objectAtIndex:0];
    if ([currentLanguage isEqualToString:@"zh-Hans-US"]) {
        self.unit = @"¥";
    }else if ([currentLanguage isEqualToString:@"en-GB"]){
        self.unit = @"£";
    }else if ([currentLanguage isEqualToString:@"es-ES"]){
        self.unit = @"€";
    }else if ([currentLanguage isEqualToString:@"ru-US"]){
        self.unit = @"₽";
    }
    [self setContentView];
}
- (void)PK_setupNavigationItems{
    [super PK_setupNavigationItems];
    [self setNavigationBarItems];
}
- (void)setNavigationBarItems{
    UIBarButtonItem *editButtonItem = [[UIBarButtonItem alloc] initWithCustomView:self.editButton];
    self.navigationItem.rightBarButtonItem = editButtonItem;
}
- (void)setContentView{
    [self loadData];
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
//            [self loadDataCategory];
        }else{
            if (array.count) {
            [weakSelf.viewDataArray removeAllObjects];
            for (int i = 0; i < array.count; i++) {
            BmobObject *obj = array[i];
            NSString *timeStamp = [obj objectForKey:@"timeStamp"];
            if ([timeStamp isEqualToString:self.nowTimeStampString]) {
            weakSelf.objectId = [obj objectId];
            NSArray *dataArray  = [obj objectForKey:@"data"];
            for (int i = 0;i < dataArray.count; i++) {
                NSDictionary *dic = dataArray[i];
                PKLimitesMensuellesModel *model = [[PKLimitesMensuellesModel alloc] init];
                model.isEdit = NO;
                model.unit = self.unit;
                model.code = [[dic objectForKey:@"code"] integerValue];
                model.content = [dic objectForKey:@"content"];
                NSUInteger num = [[dic objectForKey:@"content"] integerValue];
                self.totalAmount += num;
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
                [weakSelf.viewDataArray addObject:model];
               }
              }
            }
            self.totalAmountLbl.text = [NSString stringWithFormat:@"%@%@",NSLocalizedString(@"总金额:", nil),[NSString stringWithFormat:@"%ld%@",self.totalAmount,self.unit]];
            [self.view addSubview:self.totalAmountLbl];
            [self.totalAmountLbl mas_makeConstraints:^(MASConstraintMaker *make) {
                make.top.equalTo(self.mas_topLayoutGuideBottom).offset(20);
                make.centerX.equalTo(self.view);
                make.width.mas_equalTo(PKWIDTH);
                make.height.mas_equalTo(21);
            }];
            [weakSelf.mainTable reloadData];
                [self loadInitData];
            }else{
//                [self loadDataCategory];
                [MBProgressHUD PKshowReminderText:NSLocalizedString(@"暂无数据", nil)];
            }
        }
    }];
}
- (void)loadInitData{
    BmobQuery *bquery = [BmobQuery queryWithClassName:@"PKBudget"];
    BmobUser *author = [BmobUser currentUser];
    [bquery whereKey:@"author" equalTo:author];
    //查找GameScore表的数据
    __weak typeof(self) weakSelf = self;
    [bquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
        if (error) {
            weakSelf.editButton.hidden = NO;
        }else{
            if (array.count) {
                for (int i = 0; i < array.count; i++) {
                    BmobObject *obj = array[i];
                    NSDate *date = [obj objectForKey:@"date"];
                    NSString *dateString = [PKUIUtilities PKformattedTimeStringWithDate:date format:@"yyyyMM"];
                    if ([dateString isEqualToString:self.nowTimeStampString]) {
                        self.editButton.hidden = YES;
                        break;
                    }
                }
            }else{
                weakSelf.editButton.hidden = NO;
            }
        }
    }];
}
- (void)PKbackButtonAction{
    if (self.editButton.isHidden == NO) {
if (self.isEdit == NO) {
    if (self.viewDataArray.count && (self.totalAmount > 0)) {
        if (self.objectId.length) {
            BmobObject *Diary = [BmobObject objectWithoutDataWithClassName:@"PKCategory" objectId:self.objectId];
            NSMutableArray *tempArray = [[NSMutableArray alloc] init];
            for (int i = 0; i < self.viewDataArray.count; i++) {
                PKLimitesMensuellesModel *selectModel = self.viewDataArray[i];
                selectModel.isSelect = YES;
                NSDictionary *jsonDictionary = (NSDictionary *)[selectModel yy_modelToJSONObject];
                [tempArray addObject:jsonDictionary];
            }
            NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
            [dic setObject:[NSNumber numberWithInteger:self.totalAmount] forKey:@"totalAmount"];
            [dic setObject:tempArray forKey:@"data"];
            [Diary saveAllWithDictionary:dic];
            [Diary updateInBackgroundWithResultBlock:^(BOOL isSuccessful, NSError *error) {
                if (isSuccessful) {
                    [self.navigationController popViewControllerAnimated:YES];
                }else{
                    [MBProgressHUD PKshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
                }
            }];
        }else{
            [self setNewMensuelles];
        }
    }else{
        [self.navigationController popViewControllerAnimated:YES];
    }
}else{
    [self.navigationController popViewControllerAnimated:YES];
   }
    }else{
        [self.navigationController popViewControllerAnimated:YES];
    }
}
- (void)setNewMensuelles{
    NSMutableArray *tempArray = [[NSMutableArray alloc] init];
    for (int i = 0; i < self.viewDataArray.count; i++) {
        PKLimitesMensuellesModel *selectModel = self.viewDataArray[i];
        selectModel.isSelect = YES;
        NSDictionary *jsonDictionary = (NSDictionary *)[selectModel yy_modelToJSONObject];
        [tempArray addObject:jsonDictionary];
    }
    NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
    [dic setObject:[NSNumber numberWithInteger:self.totalAmount] forKey:@"totalAmount"];
    [dic setObject:tempArray forKey:@"data"];
    BmobObject *diary = [BmobObject objectWithClassName:@"PKCategory"];
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
            NSLog(@"Unknow error");
        }
    }];
}
- (void)btnClick:(UIButton *)sender{
    [self closeKeyBoard];
    sender.selected = !sender.selected;
    if (sender.selected) {
        [self.editButton setTitle:NSLocalizedString(@"完成", nil) forState:UIControlStateNormal];
        for (int i = 0; i < self.viewDataArray.count; i++) {
            PKLimitesMensuellesModel *model = self.viewDataArray[i];
            model.isEdit = YES;
        }
        self.isEdit = YES;
        [self.mainTable reloadData];
    }else{
        [self.editButton setTitle:NSLocalizedString(@"编辑", nil) forState:UIControlStateNormal];
        self.totalAmount = 0;
        for (int i = 0; i < self.viewDataArray.count; i++) {
            PKLimitesMensuellesModel *model = self.viewDataArray[i];
            model.isEdit = NO;
            NSUInteger num = [model.content integerValue];
            if (num == 0) {
                [MBProgressHUD PKshowReminderText:@"请填写完整"];
                return;
            }
            self.totalAmount += num;
        }
        if (self.totalAmount > 0) {
            _totalAmountLbl.text = [NSString stringWithFormat:@"%@%@",NSLocalizedString(@"总金额:", nil),[NSString stringWithFormat:@"%ld%@",self.totalAmount,self.unit]];
        }
        self.isEdit = NO;
        [self.mainTable reloadData];
    }
}
- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate{
    [self.view endEditing:YES];
}
- (void)closeKeyBoard{
    [self.view endEditing:YES];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.viewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    PKLimitesMensuellesModel *model = self.viewDataArray[indexPath.row];
    PKLimitesMensuellesTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PKLimitesMensuellesTableViewCell" forIndexPath:indexPath];
    cell.model = model;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
#pragma mark - 属性懒加载
- (UIButton *)editButton{
    if (!_editButton) {
        _editButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_editButton setTitle:NSLocalizedString(@"编辑", nil) forState:UIControlStateNormal];
        [_editButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_editButton.titleLabel setFont:[UIFont systemFontOfSize:15]];
        [_editButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _editButton;
}
- (UILabel *)totalAmountLbl{
    if (!_totalAmountLbl) {
        _totalAmountLbl = [[UILabel alloc] init];
        _totalAmountLbl.textColor = [UIColor blackColor];
        _totalAmountLbl.font = [UIFont systemFontOfSize:20];
        _totalAmountLbl.textAlignment = NSTextAlignmentCenter;
        _totalAmountLbl.numberOfLines = 0;
        _totalAmountLbl.text = [NSString stringWithFormat:@"%@%@",NSLocalizedString(@"总金额:", nil),@"-"];
    }
    return _totalAmountLbl;
}
- (NSMutableArray *)viewDataArray{
    if (!_viewDataArray) {
        _viewDataArray = [[NSMutableArray alloc] init];
    }
    return _viewDataArray;
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
        [_mainTable registerClass:[PKLimitesMensuellesTableViewCell class] forCellReuseIdentifier:@"PKLimitesMensuellesTableViewCell"];
        [self.view addSubview:_mainTable];
        [_mainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.totalAmountLbl.mas_bottom).offset(10);
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
