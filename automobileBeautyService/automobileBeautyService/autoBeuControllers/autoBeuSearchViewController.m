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
@property (nonatomic, strong) autoBeuCustomContentTextField *autoBeusearchTextField;
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
}
- (void)autoBeu_setupNavigationItems {
    [super autoBeu_setupNavigationItems];
    
}
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
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
    [self autoBeu_configureNavigationItems];
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
    [self.navigationController pushViewController:vc animated:YES];
}
- (void)autoBeu_configureNavigationItems {
//    UIBarButtonItem *cancelItem = [[UIBarButtonItem alloc] initWithCustomView:self.autoBeucancelButton];
//    self.navigationItem.leftBarButtonItem = cancelItem;
//    self.navigationItem.titleView = self.autoBeusearchTextField;
    [self.view addSubview:self.autoBeusearchTextField];
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
            make.edges.mas_equalTo(UIEdgeInsetsZero);
        }];
        
        [_autoBeutableView registerClass:[autoBeuRecordTableViewCell class] forCellReuseIdentifier:@"autoBeuRecordTableViewCell"];
    }
    return _autoBeutableView;
}
- (autoBeuCustomContentTextField *)auto4BeusearchTextField {
    if (!_autoBeusearchTextField) {
        UIView *searchIconView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 36, 30)];
        searchIconView.backgroundColor = [UIColor clearColor];
        UIImageView *searchIconImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"autoBeubtn_search_new"]];
        [searchIconView addSubview:searchIconImage];
        
        [searchIconImage mas_makeConstraints:^(MASConstraintMaker *make) {
            make.center.equalTo(searchIconView);
            make.size.mas_equalTo(CGSizeMake(15, 15));
        }];
        
        _autoBeusearchTextField = [[autoBeuCustomContentTextField alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width - 119, 30)];
        _autoBeusearchTextField.backgroundColor = [UIColor colorWithRed:0.94 green:0.94 blue:0.94 alpha:1.00];
        _autoBeusearchTextField.delegate = self;
        _autoBeusearchTextField.layer.cornerRadius = 4;
        _autoBeusearchTextField.layer.masksToBounds = YES;
        _autoBeusearchTextField.autocorrectionType = UITextAutocorrectionTypeNo;
        _autoBeusearchTextField.autocapitalizationType = UITextAutocapitalizationTypeNone;
        _autoBeusearchTextField.font = [UIFont systemFontOfSize:13.0];
        _autoBeusearchTextField.textColor = [UIColor colorWithRed:0.22 green:0.26 blue:0.35 alpha:1.00];
        _autoBeusearchTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _autoBeusearchTextField.returnKeyType = UIReturnKeySearch;
        _autoBeusearchTextField.enablesReturnKeyAutomatically = YES;
        _autoBeusearchTextField.placeholder = @"Search";
        _autoBeusearchTextField.leftView = searchIconView;
        _autoBeusearchTextField.leftViewMode = UITextFieldViewModeAlways;
    }
    return _autoBeusearchTextField;
}

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
