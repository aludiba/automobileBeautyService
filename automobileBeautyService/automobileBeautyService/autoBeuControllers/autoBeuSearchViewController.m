//
//  autoBeuSearchViewController.m
//  automobileBeautyService
//
//  Created by bykj on 2019/6/19.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "autoBeuSearchViewController.h"
#import "autoBeuCustomContentTextField.h"
#import "autoBeuDataModel.h"
#import "autoBeuRecordTableViewCell.h"
#import "autoBeuAddViewController.h"
@interface autoBeuSearchViewController ()<UITextFieldDelegate,UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) UITextField *autoBeusearchTextField;
@property (nonatomic, strong) UIButton *autoBeucancelButton;
@property (nonatomic, strong) UITableView *autoBeutableView;
@property (nonatomic, strong) NSMutableArray *autoBeudatas;
@property (nonatomic, assign) Boolean autoBeufirstEnter;
@end
@implementation autoBeuSearchViewController
- (void)viewDidLoad{
    [super viewDidLoad];
    CGFloat aRedValue = arc4random() % 255;
    CGFloat aGreenValue = arc4random() % 255;
    CGFloat aBlueValue = arc4random() % 255;
    self.view.backgroundColor = [UIColor colorWithRed:aRedValue/256.0 green:aGreenValue/256.0 blue:aBlueValue/256.0 alpha:1.0];
    self.title = @"Search";
    [self setSearchText];
}
- (void)autoBeu_setupNavigationItems {
    [super autoBeu_setupNavigationItems];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    NSString *documentPath = [autoBeuHBTool getDocumentPath:@"autoBeuData.plist"];
    NSMutableArray *documentData = [[NSMutableArray alloc] initWithContentsOfFile:documentPath];
    if (documentData.count) {
        NSMutableArray *autoBeudataArray = [[NSMutableArray alloc] init];
        for (int i = 0; i < documentData.count; i++) {
            NSDictionary *dict = documentData[i];
            NSDictionary *dic = dict[@"data"];
            autoBeuDataModel *model = [autoBeuDataModel yy_modelWithDictionary:dic];
            [autoBeudataArray addObject:model];
        }
        self.autoBeusourceArray = [autoBeudataArray copy];
    }
    self.autoBeufirstEnter = YES;
    if (self.autoBeufirstEnter) {
        [self.autoBeusearchTextField becomeFirstResponder];
        self.autoBeufirstEnter = NO;
    }
}
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
}
- (void)setSearchText{
    self.autoBeusearchTextField = [[UITextField alloc] init];
    self.autoBeusearchTextField.backgroundColor = auto4sH_Color(242, 242, 242, 1);
    [self.view addSubview:self.autoBeusearchTextField];
    [self.autoBeusearchTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(5);
        make.leading.equalTo(self.view).offset(12);
        make.width.mas_equalTo(auto4sWIDTH - 24);
        make.height.mas_equalTo(30);
    }];
    self.autoBeusearchTextField.font = [UIFont fontWithName:@"PingFangSC-Regular" size:13];
    self.autoBeusearchTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
    self.autoBeusearchTextField.leftViewMode = UITextFieldViewModeWhileEditing;
    //设置圆角
    self.autoBeusearchTextField.layer.cornerRadius = 4;
    //将多余的部分切掉
    UIView *searchTextLeftView = [[UIView alloc] init];
    [self.autoBeusearchTextField addSubview:searchTextLeftView];
    [searchTextLeftView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.autoBeusearchTextField);
        make.leading.equalTo(self.autoBeusearchTextField);
        make.width.mas_equalTo(39);
        make.height.mas_equalTo(30);
    }];
    [self.autoBeusearchTextField setLeftView:searchTextLeftView];
    searchTextLeftView.backgroundColor = auto4sH_Color(242, 242, 242, 1);
    UIImageView *searchTextLeftImgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"autoBeubtn_search_new"]];
    [searchTextLeftView addSubview:searchTextLeftImgView];
    [searchTextLeftImgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(searchTextLeftView);
        make.centerY.equalTo(searchTextLeftView);
        make.width.mas_equalTo(15);
        make.height.mas_equalTo(15);
    }];
    self.autoBeusearchTextField.placeholder = @"Search for customer name";
    self.autoBeusearchTextField.leftViewMode = UITextFieldViewModeAlways;
    self.autoBeusearchTextField.delegate = self;
    self.autoBeusearchTextField.returnKeyType = UIReturnKeySearch;
}
- (void)autoBeuloadData{
    NSString *keywords = [self.autoBeusearchTextField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    if ([keywords isEqualToString:@""]) {
        [self.autoBeutableView.mj_header endRefreshing];
        return;
    }
    [self.autoBeudatas removeAllObjects];
    NSString *keywordString = [self.autoBeusearchTextField.text stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLPathAllowedCharacterSet]];
    keywordString = keywordString.lowercaseString;
    NSMutableArray * tempArr = [NSMutableArray array];
    if (![keywordString isEqualToString:@""] && ![keywordString isEqual:[NSNull null]]) {
        [self.autoBeusourceArray enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            autoBeuDataModel *model = self.autoBeusourceArray[idx];
            NSString *name = model.name.lowercaseString;
            NSString *licensePlatePinyin = model.namePinYin.lowercaseString;
            NSString *licenseFirstLetter = model.nameLowerCase.lowercaseString;
            NSRange rang1 = [name rangeOfString:keywordString];
            if (rang1.length > 0) {
                [tempArr addObject:model];
            }else {
                if ([licenseFirstLetter containsString:keywordString]) {
                    
                    [tempArr addObject:model];
                }else{
                    if ([licenseFirstLetter containsString:[keywordString substringToIndex:1]]) {
                        if ([licensePlatePinyin containsString:keywordString]) {
                            [tempArr addObject:model];
                        }
                    }
                }
            }
        }];
        [tempArr enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            
            if (![self.autoBeudatas containsObject:tempArr[idx]]) {
                
                [self.autoBeudatas addObject:tempArr[idx]];
            }
        }];
    }
    [self.autoBeutableView reloadData];
    [self.view endEditing:YES];
}
#pragma mark - UITextFieldDelegate
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
    [self.autoBeudatas removeAllObjects];
    [self.autoBeutableView reloadData];
    return YES;
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    NSString *keywords = [textField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    if ([keywords isEqualToString:@""]) {
        //没有输入搜索关键字
        return NO;
    }
    [textField resignFirstResponder];
    [self autoBeuloadData];
    return YES;
}
#pragma mark - UIScrollViewDelegate
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView {
    [self.view endEditing:YES];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.autoBeudatas.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    autoBeuRecordTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"autoBeuRecordTableViewCell" forIndexPath:indexPath];
    cell.model = self.autoBeudatas[indexPath.row];
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    autoBeuDataModel *model = self.autoBeudatas[indexPath.row];
    autoBeuAddViewController *vc = [[autoBeuAddViewController alloc] init];
    vc.currentType = autoBeuAddViewControllerTypeDetail;
    vc.model = model;
    vc.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:vc animated:YES];
}
- (void)autoBeucancelButtonAction {
    [self.navigationController popViewControllerAnimated:YES];
}
#pragma mark - 属性懒加载
- (UITableView *)autoBeutableView {
    if (!_autoBeutableView) {
        _autoBeutableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _autoBeutableView.backgroundColor = [UIColor groupTableViewBackgroundColor];
        _autoBeutableView.delegate = self;
        _autoBeutableView.dataSource = self;
        _autoBeutableView.rowHeight = UITableViewAutomaticDimension;
        _autoBeutableView.estimatedRowHeight = 89.0f;
        _autoBeutableView.separatorColor = [UIColor colorWithRed:0.92 green:0.92 blue:0.92 alpha:1.00];
        _autoBeutableView.separatorInset = UIEdgeInsetsMake(0, 16, 0, 16);
        _autoBeutableView.tableHeaderView = [[UIView alloc] init];
        _autoBeutableView.tableFooterView = [[UIView alloc] init];
        [self.view addSubview:_autoBeutableView];
        
        [_autoBeutableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.autoBeusearchTextField.mas_bottom).offset(5);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view);
        }];
        
        [_autoBeutableView registerClass:[autoBeuRecordTableViewCell class] forCellReuseIdentifier:@"autoBeuRecordTableViewCell"];
    }
    return _autoBeutableView;
}
//- (UITextField *)auto4BeusearchTextField {
//    if (_autoBeusearchTextField == nil) {
//        _autoBeusearchTextField = [[UITextField alloc] init];
//        _autoBeusearchTextField.backgroundColor = auto4sH_Color(242, 242, 242, 1);
//        [self.view addSubview:_autoBeusearchTextField];
//        [_autoBeusearchTextField mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.top.equalTo(self.view).offset(auto4sHeightNavBar);
//            make.leading.equalTo(self.view).offset(12);
//            make.width.mas_equalTo(auto4sWIDTH - 24);
//            make.height.mas_equalTo(30);
//        }];
//        _autoBeusearchTextField.font = [UIFont fontWithName:@"PingFangSC-Regular" size:13];
//        _autoBeusearchTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
//        _autoBeusearchTextField.leftViewMode = UITextFieldViewModeWhileEditing;
//        //设置圆角
//        _autoBeusearchTextField.layer.cornerRadius = 4;
//        //将多余的部分切掉
//        _autoBeusearchTextField.layer.masksToBounds = YES;
//        UIView *searchTextLeftView = [[UIView alloc] init];
//        [_autoBeusearchTextField addSubview:searchTextLeftView];
//        [searchTextLeftView mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.top.equalTo(self->_autoBeusearchTextField);
//            make.leading.equalTo(self->_autoBeusearchTextField);
//            make.width.mas_equalTo(39);
//            make.height.mas_equalTo(30);
//        }];
//        [_autoBeusearchTextField setLeftView:searchTextLeftView];
//        searchTextLeftView.backgroundColor = auto4sH_Color(242, 242, 242, 1);
//        UIImageView *searchTextLeftImgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"autoBeubtn_search_new"]];
//        [searchTextLeftView addSubview:searchTextLeftImgView];
//        [searchTextLeftImgView mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.centerX.equalTo(searchTextLeftView);
//            make.centerY.equalTo(searchTextLeftView);
//            make.width.mas_equalTo(15);
//            make.height.mas_equalTo(15);
//        }];
//        _autoBeusearchTextField.placeholder = @"Search for customer name";
//        _autoBeusearchTextField.leftViewMode = UITextFieldViewModeAlways;
//        _autoBeusearchTextField.delegate = self;
//        _autoBeusearchTextField.returnKeyType = UIReturnKeySearch;
//    }
//    return _autoBeusearchTextField;
//}
- (UIButton *)autoBeucancelButton {
    if (!_autoBeucancelButton) {
        _autoBeucancelButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
        [_autoBeucancelButton setTitle:@"Cancel" forState:UIControlStateNormal];
        [_autoBeucancelButton setTitleColor:[UIColor colorWithRed:0.22 green:0.26 blue:0.35 alpha:1.00] forState:UIControlStateNormal];
        _autoBeucancelButton.titleLabel.font = [UIFont systemFontOfSize:17.0];
        [_autoBeucancelButton addTarget:self action:@selector(autoBeucancelButtonAction) forControlEvents:UIControlEventTouchUpInside];
    }
    return _autoBeucancelButton;
}
- (NSMutableArray *)autoBeudatas {
    if (!_autoBeudatas) {
        _autoBeudatas = [NSMutableArray array];
    }
    return _autoBeudatas;
}
@end
