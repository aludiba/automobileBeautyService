//
//  stbaAddressBookViewController.m
//  smallTeamBuildingActivities
//
//  Created by bykj on 2019/7/4.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "stbaAddressBookViewController.h"
#import "stbaCustomContentTextField.h"
#import "stbaAddressBookTableViewCell.h"
#import "stbaAddressBookModel.h"
#import "stbaAddContactViewController.h"
#import "stbaAddressBookDetailsViewController.h"
@interface stbaAddressBookViewController ()<UITextFieldDelegate,UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)UIButton *stbaAddContactButton;
@property (nonatomic, strong) UITextField *stbaSearchTextField;
@property(nonatomic, strong)NSMutableArray *dataArray;
@property(nonatomic, strong)NSMutableArray *stbaSourceArray;
@property(nonatomic, strong)UITableView *mainTable;
@end
@implementation stbaAddressBookViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Address Book";
    [self setSearchText];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self loadData];
}
- (void)stba_setupNavigationItems{
    [super stba_setupNavigationItems];
    UIBarButtonItem *rightbaritem = [[UIBarButtonItem alloc] initWithCustomView:self.stbaAddContactButton];
    self.navigationItem.rightBarButtonItem = rightbaritem;
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
    [self.view endEditing:YES];
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
#pragma mark - UITextFieldDelegate
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
#pragma mark - 添加新联系人
-(void)addContact{
    stbaAddContactViewController *stbaAddContactVC = [[stbaAddContactViewController alloc] init];
    stbaAddContactVC.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:stbaAddContactVC animated:YES];
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    stbaAddressBookModel *model = self.dataArray[indexPath.row];
    stbaAddressBookTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"stbaAddressBookTableViewCell" forIndexPath:indexPath];
    cell.model = model;
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    stbaAddressBookModel *model = self.dataArray[indexPath.row];
    stbaAddressBookDetailsViewController *vc = [[stbaAddressBookDetailsViewController alloc] init];
    vc.model = model;
    vc.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:vc animated:YES];
}
#pragma mark - 属性懒加载
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
- (UIButton *)stbaAddContactButton{
    if (!_stbaAddContactButton) {
        _stbaAddContactButton = [[UIButton alloc] init];
        [_stbaAddContactButton setImage:[UIImage imageNamed:@"add"] forState:UIControlStateNormal];
        [_stbaAddContactButton addTarget:self action:@selector(addContact) forControlEvents:UIControlEventTouchUpInside];
        [_stbaAddContactButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.mas_equalTo(22);
            make.height.mas_equalTo(22);
        }];
    }
    return _stbaAddContactButton;
}
- (UITableView *)mainTable{
    if (!_mainTable) {
        _mainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _mainTable.backgroundColor = [UIColor groupTableViewBackgroundColor];
        _mainTable.delegate = self;
        _mainTable.dataSource = self;
        _mainTable.rowHeight = UITableViewAutomaticDimension;
        _mainTable.estimatedRowHeight = 136.5f;
        _mainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _mainTable.tableHeaderView = [[UIView alloc] init];
        _mainTable.tableFooterView = [[UIView alloc] init];
        [self.view addSubview:_mainTable];
        [_mainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.stbaSearchTextField.mas_bottom).offset(5);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view);
        }];
        [_mainTable registerClass:[stbaAddressBookTableViewCell class] forCellReuseIdentifier:@"stbaAddressBookTableViewCell"];
        UITapGestureRecognizer *singleTapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(closeKeyboard:)];
        singleTapGesture.numberOfTapsRequired = 1;
        singleTapGesture.cancelsTouchesInView = NO;
        [_mainTable addGestureRecognizer:singleTapGesture];
        [self.view addGestureRecognizer:singleTapGesture];
        UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(closeKeyboard:)];
        [self.view addGestureRecognizer:panGesture];
        _mainTable.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(loadData)];
    }
    return _mainTable;
}
@end
