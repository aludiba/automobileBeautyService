//
//  stbaSearchAddressBookViewController.m
//  smallTeamBuildingActivities
//
//  Created by 褚红彪 on 2019/7/10.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "stbaChooseAddressBookViewController.h"
#import "searchStbaChooseAddressBookViewController.h"
#import "stbaAddActivitiesViewController.h"
#import "stbaSearchBox.h"
#import "stbaChooseAddressBookTableViewCell.h"
#import "stbaAddressBookModel.h"
@interface stbaChooseAddressBookViewController ()<UITableViewDelegate,UITableViewDataSource,UITextFieldDelegate>
@property (nonatomic, strong) UITextField *stbaSearchTextField;
@property(nonatomic, strong)UITableView *mainTable;
@property(nonatomic, strong)UIButton *completebtn;//完成键
@property(nonatomic, strong)NSMutableArray *dataArray;//数据数组
@property(nonatomic, strong)NSMutableArray *stbaSourceArray;
@end

@implementation stbaChooseAddressBookViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    [self setContentView];
}
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [self loadData];
}
- (void)setContentView{
    self.title = @"Select participants";
    [self setSearchText];
}
- (void)stba_setupNavigationItems{
    [super stba_setupNavigationItems];
    self.completebtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc] initWithCustomView:self.completebtn];
    self.navigationItem.rightBarButtonItem = rightItem;
    [self.completebtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(100);
        make.height.mas_equalTo(30);
    }];
}
- (void)loadData{
    [self.stbaSourceArray removeAllObjects];
    NSString *documentPath = [stbaHBTool getDocumentPath:@"stbaData.plist"];
    NSMutableArray *documentData = [[NSMutableArray alloc] initWithContentsOfFile:documentPath];
    if (documentData.count) {
        [self.dataArray removeAllObjects];
        for (int i = 0; i < documentData.count; i++) {
            NSDictionary *dict = documentData[i];
            NSDictionary *dic = dict[@"data"];
            stbaAddressBookModel *model = [stbaAddressBookModel yy_modelWithDictionary:dic];
            [self.dataArray addObject:model];
        }
    }
    if (self.dataArray.count && !self.stbaSourceArray.count) {
        [self.stbaSourceArray addObjectsFromArray:self.dataArray];
    }
    [self.mainTable.mj_header endRefreshing];
    [self.mainTable reloadData];
}
- (void)loadSearchData{
    NSString *keywords = [self.stbaSearchTextField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    if ([keywords isEqualToString:@""]) {
        [self.mainTable.mj_header endRefreshing];
        return;
    }
    [self.dataArray removeAllObjects];
    NSString *keywordString = [self.stbaSearchTextField.text stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLPathAllowedCharacterSet]];
    keywordString = keywordString.lowercaseString;
    NSMutableArray * tempArr = [NSMutableArray array];
    if (![keywordString isEqualToString:@""] && ![keywordString isEqual:[NSNull null]]) {
        [self.stbaSourceArray enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            stbaAddressBookModel *model = self.stbaSourceArray[idx];
            NSString *name = model.name.lowercaseString;
            NSString *namePinyin = model.namePinYin.lowercaseString;
            NSString *namePinyinLetter = model.nameLowerCase.lowercaseString;
            NSRange rang1 = [name rangeOfString:keywordString];
            if (rang1.length > 0) {
                [tempArr addObject:model];
            }else{
                if ([namePinyinLetter containsString:keywordString]) {
                    [tempArr addObject:model];
                } else {
                    if ([namePinyinLetter containsString:[keywordString substringToIndex:1]]) {
                        if ([namePinyin containsString:keywordString]) {
                            [tempArr addObject:model];
                        }
                    }
                }
            }
        }];
        [tempArr enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            if (![self.dataArray containsObject:tempArr[idx]]) {
                [self.dataArray addObject:tempArr[idx]];
            }
        }];
    }
    [self.mainTable reloadData];
    [self.view endEditing:YES];
}
#pragma mark - 设置搜索
- (void)setSearchText{
    self.stbaSearchTextField = [[UITextField alloc] init];
    self.stbaSearchTextField.backgroundColor = stbaH_Color(242, 242, 242, 1);
    [self.view addSubview:self.stbaSearchTextField];
    [self.stbaSearchTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(5);
        make.leading.equalTo(self.view).offset(12);
        make.width.mas_equalTo(stbaWIDTH - 24);
        make.height.mas_equalTo(30);
    }];
    self.stbaSearchTextField.font = [UIFont fontWithName:@"PingFangSC-Regular" size:13];
    self.stbaSearchTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
    self.stbaSearchTextField.leftViewMode = UITextFieldViewModeWhileEditing;
    //设置圆角
    self.stbaSearchTextField.layer.cornerRadius = 4;
    //将多余的部分切掉
    UIView *searchTextLeftView = [[UIView alloc] init];
    [self.stbaSearchTextField addSubview:searchTextLeftView];
    [searchTextLeftView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.stbaSearchTextField);
        make.leading.equalTo(self.stbaSearchTextField);
        make.width.mas_equalTo(39);
        make.height.mas_equalTo(30);
    }];
    [self.stbaSearchTextField setLeftView:searchTextLeftView];
    searchTextLeftView.backgroundColor = stbaH_Color(242, 242, 242, 1);
    UIImageView *searchTextLeftImgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"search"]];
    [searchTextLeftView addSubview:searchTextLeftImgView];
    [searchTextLeftImgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(searchTextLeftView);
        make.centerY.equalTo(searchTextLeftView);
        make.width.mas_equalTo(15);
        make.height.mas_equalTo(15);
    }];
    self.stbaSearchTextField.placeholder = @"Search for friends name";
    self.stbaSearchTextField.leftViewMode = UITextFieldViewModeAlways;
    self.stbaSearchTextField.delegate = self;
    self.stbaSearchTextField.returnKeyType = UIReturnKeySearch;
}
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
    [self.dataArray removeAllObjects];
    [self.mainTable reloadData];
    return YES;
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    NSString *keywords = [textField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    if ([keywords isEqualToString:@""]) {
        //没有输入搜索关键字
        return NO;
    }
    [textField resignFirstResponder];
    [self loadSearchData];
    return YES;
}
- (BOOL)textFieldShouldClear:(UITextField *)textField{
    [self.mainTable.mj_header beginRefreshing];
    return YES;
}
#pragma mark - UIScrollViewDelegate
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView {
    [self.view endEditing:YES];
}
- (void)closeKeyboard:(UITapGestureRecognizer *)recognizer {
    [self.view endEditing:YES];
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    stbaAddressBookModel *model = self.dataArray[indexPath.row];
    stbaChooseAddressBookTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"stbaChooseAddressBookTableViewCell" forIndexPath:indexPath];
    for (stbaAddressBookModel *selectResearcherModel in self.selectArray) {
        if ([selectResearcherModel.name isEqualToString:model.name]) {
            model.isSlect = YES;
        }
    }
    cell.model = model;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    stbaAddressBookModel *model = self.dataArray[indexPath.row];
    for (int i = 0; i < self.selectArray.count; i++) {
        stbaAddressBookModel *selectResearcherModel = self.selectArray[i];
        if ([selectResearcherModel.name isEqualToString:model.name]) {
            model.isSlect = NO;
            [self.selectArray removeObject:selectResearcherModel];
            [self.mainTable reloadData];
            return;
        }
    }
    [self.selectArray addObject:model];
    [self.mainTable reloadData];
}
#pragma mark - 进入搜索
//- (void)researcher:(stbaSearchBox *)searchbox{
//    searchStbaChooseAddressBookViewController *vc = [[searchStbaChooseAddressBookViewController alloc] init];
//    [self.navigationController pushViewController:vc animated:YES];
//}
#pragma mark - 完成
- (void)complete{
    self.finishSelectBlock(self);
    if (self.superVC) {
        self.superVC.currentType = stbaAddActivitiesViewControllerTypeOther;
        [self.navigationController popToViewController:self.superVC animated:YES];
    }
}
#pragma mark - 属性懒加载
- (NSMutableArray *)selectArray{
    if (!_selectArray) {
        _selectArray = [[NSMutableArray alloc] init];
    }
    return _selectArray;
}
- (NSMutableArray *)dataArray{
    if (!_dataArray) {
        _dataArray = [[NSMutableArray alloc] init];
    }
    return _dataArray;
}
- (NSMutableArray *)stbaSourceArray{
    if (!_stbaSourceArray) {
        _stbaSourceArray = [[NSMutableArray alloc] init];
    }
    return _stbaSourceArray;
}
- (UITableView *)mainTable{
    if (!_mainTable) {
        _mainTable = [[UITableView alloc] init];
        _mainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _mainTable.delegate = self;
        _mainTable.dataSource = self;
        _mainTable.rowHeight = UITableViewAutomaticDimension;
        _mainTable.estimatedRowHeight = 55.0f;
        _mainTable.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(loadData)];
        [_mainTable registerClass:[stbaChooseAddressBookTableViewCell class] forCellReuseIdentifier:@"stbaChooseAddressBookTableViewCell"];
        [self.view addSubview:_mainTable];
        [_mainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.stbaSearchTextField.mas_bottom);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.mas_bottomLayoutGuideBottom);
        }];
        UITapGestureRecognizer *singleTapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(closeKeyboard:)];
        singleTapGesture.numberOfTapsRequired = 1;
        singleTapGesture.cancelsTouchesInView = NO;
        [_mainTable addGestureRecognizer:singleTapGesture];
        [self.view addGestureRecognizer:singleTapGesture];
        UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(closeKeyboard:)];
        [self.view addGestureRecognizer:panGesture];
    }
    return _mainTable;
}
- (UIButton *)completebtn{
    if (!_completebtn) {
        _completebtn = [[UIButton alloc] init];
        _completebtn.backgroundColor = [UIColor colorWithRed:223/255.0 green:231/255.0 blue:250/255.0 alpha:1/1.0];
        _completebtn.layer.cornerRadius = 4;
        _completebtn.layer.masksToBounds = YES;
        [_completebtn setTitle:@"complete" forState:UIControlStateNormal];
        [_completebtn.titleLabel setFont:[UIFont fontWithName:@"PingFangSC-Regular" size:14]];
        [_completebtn.titleLabel setTextAlignment:NSTextAlignmentCenter];
        [_completebtn setTitleColor: [UIColor colorWithRed:100/255.0 green:141/255.0 blue:225/255.0 alpha:1/1.0] forState:UIControlStateNormal];
        [_completebtn addTarget:self action:@selector(complete) forControlEvents:UIControlEventTouchUpInside];
    }
    return _completebtn;
}
@end
