//
//  mag5sSearchViewController.m
//  workshopManagement5s
//
//  Created by bykj on 2019/6/28.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "mag5sSearchViewController.h"
#import "mag5sCustomContentTextField.h"
#import "mag5sRecordTableViewCell.h"
#import "mag5sDataModel.h"
#import "mag5sAddViewController.h"
#import "mag5sHadDataTableViewCell.h"

@interface mag5sSearchViewController ()<UITextFieldDelegate,UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) UITextField *mag5sSearchTextField;
@property (nonatomic, strong) UIButton *mag5sCancelButton;
@property (nonatomic, strong) UITableView *mag5sTableView;
@property (nonatomic, strong) NSMutableArray *mag5sDatas;
@property (nonatomic, assign) Boolean mag5sFirstEnter;
@end

@implementation mag5sSearchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setSearchText];
    NSString *documentPath = [mag5sHBTool getDocumentPath:@"mag5sData.plist"];
    NSMutableArray *documentData = [[NSMutableArray alloc] initWithContentsOfFile:documentPath];
    if (documentData.count) {
        NSMutableArray *mag5sdataArray = [[NSMutableArray alloc] init];
        for (int i = 0; i < documentData.count; i++) {
            NSDictionary *dict = documentData[i];
            NSDictionary *dic = dict[@"data"];
            mag5sDataModel *model = [mag5sDataModel yy_modelWithDictionary:dic];
            [mag5sdataArray addObject:model];
        }
        self.mag5sSourceArray = [mag5sdataArray copy];
    }
    self.mag5sFirstEnter = YES;
    if (self.mag5sFirstEnter) {
        [self.mag5sSearchTextField becomeFirstResponder];
        self.mag5sFirstEnter = NO;
    }
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}
- (void)setSearchText{
    self.mag5sSearchTextField = [[UITextField alloc] init];
    self.mag5sSearchTextField.backgroundColor = mag5sH_Color(242, 242, 242, 1);
    [self.view addSubview:self.mag5sSearchTextField];
    [self.mag5sSearchTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(5);
        make.leading.equalTo(self.view).offset(12);
        make.width.mas_equalTo(mag5sWIDTH - 24);
        make.height.mas_equalTo(30);
    }];
    self.mag5sSearchTextField.font = [UIFont fontWithName:@"PingFangSC-Regular" size:13];
    self.mag5sSearchTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
    self.mag5sSearchTextField.leftViewMode = UITextFieldViewModeWhileEditing;
    //设置圆角
    self.mag5sSearchTextField.layer.cornerRadius = 4;
    //将多余的部分切掉
    UIView *searchTextLeftView = [[UIView alloc] init];
    [self.mag5sSearchTextField addSubview:searchTextLeftView];
    [searchTextLeftView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mag5sSearchTextField);
        make.leading.equalTo(self.mag5sSearchTextField);
        make.width.mas_equalTo(39);
        make.height.mas_equalTo(30);
    }];
    [self.mag5sSearchTextField setLeftView:searchTextLeftView];
    searchTextLeftView.backgroundColor = mag5sH_Color(242, 242, 242, 1);
    UIImageView *searchTextLeftImgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"autoBeubtn_search_new"]];
    [searchTextLeftView addSubview:searchTextLeftImgView];
    [searchTextLeftImgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(searchTextLeftView);
        make.centerY.equalTo(searchTextLeftView);
        make.width.mas_equalTo(15);
        make.height.mas_equalTo(15);
    }];
    self.mag5sSearchTextField.placeholder = @"Search for section name";
    self.mag5sSearchTextField.leftViewMode = UITextFieldViewModeAlways;
    self.mag5sSearchTextField.delegate = self;
    self.mag5sSearchTextField.returnKeyType = UIReturnKeySearch;
}
- (void)mag5sLoadData{
    NSString *keywords = [self.mag5sSearchTextField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    if ([keywords isEqualToString:@""]) {
        [self.mag5sTableView.mj_header endRefreshing];
        return;
    }
    [self.mag5sDatas removeAllObjects];
    NSString *keywordString = [self.mag5sSearchTextField.text stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLPathAllowedCharacterSet]];
    keywordString = keywordString.lowercaseString;
    NSMutableArray * tempArr = [NSMutableArray array];
    if (![keywordString isEqualToString:@""] && ![keywordString isEqual:[NSNull null]]) {
        [self.mag5sSourceArray enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            mag5sDataModel *model = self.mag5sSourceArray[idx];
            NSString *sectionName = model.sectionName.lowercaseString;
            NSString *sectionNamePinyin = model.sectionName.lowercaseString;
            NSString *sectionNameFirstLetter = model.sectionNameLowerCase.lowercaseString;
            NSRange rang1 = [sectionName rangeOfString:keywordString];
            if (rang1.length > 0) {
                [tempArr addObject:model];
            }else {
                if ([sectionNameFirstLetter containsString:keywordString]) {
                    
                    [tempArr addObject:model];
                }else{
                    if ([sectionNameFirstLetter containsString:[keywordString substringToIndex:1]]) {
                        if ([sectionNamePinyin containsString:keywordString]) {
                            [tempArr addObject:model];
                        }
                    }
                }
            }
        }];
        [tempArr enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            
            if (![self.mag5sDatas containsObject:tempArr[idx]]) {
                
                [self.mag5sDatas addObject:tempArr[idx]];
            }
        }];
    }
    [self.mag5sTableView reloadData];
    [self.view endEditing:YES];
}
#pragma mark - UITextFieldDelegate
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
    [self.mag5sDatas removeAllObjects];
    [self.mag5sTableView reloadData];
    return YES;
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    NSString *keywords = [textField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    if ([keywords isEqualToString:@""]) {
        //没有输入搜索关键字
        return NO;
    }
    [textField resignFirstResponder];
    [self mag5sLoadData];
    return YES;
}
#pragma mark - UIScrollViewDelegate
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView {
    [self.view endEditing:YES];
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (self.mag5sDatas.count) {
        return self.mag5sDatas.count;
    }else{
        return 1;
    }
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (self.mag5sDatas.count) {
    mag5sRecordTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"mag5sRecordTableViewCell" forIndexPath:indexPath];
    cell.model = self.mag5sDatas[indexPath.row];
    return cell;
    }else{
        mag5sHadDataTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"mag5sHadDataTableViewCell" forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    if (self.mag5sDatas.count) {
    mag5sDataModel *model = self.mag5sDatas[indexPath.row];
    mag5sAddViewController *vc = [[mag5sAddViewController alloc] init];
    vc.currentType = mag5sAddViewControllerTypeDetail;
    vc.mag5sdatamodel = model;
    vc.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:vc animated:YES];
    }
}
- (void)mag5sCancelButtonAction{
    [self.navigationController popViewControllerAnimated:YES];
}
#pragma mark - 属性懒加载
- (UITableView *)mag5sTableView{
    if (!_mag5sTableView) {
        _mag5sTableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _mag5sTableView.delegate = self;
        _mag5sTableView.dataSource = self;
        _mag5sTableView.rowHeight = UITableViewAutomaticDimension;
        _mag5sTableView.estimatedRowHeight = 89.0f;
        _mag5sTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        _mag5sTableView.tableHeaderView = [[UIView alloc] init];
        _mag5sTableView.tableFooterView = [[UIView alloc] init];
        [self.view addSubview:_mag5sTableView];
        [_mag5sTableView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mag5sSearchTextField.mas_bottom).offset(5);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view);
        }];
        [_mag5sTableView registerClass:[mag5sRecordTableViewCell class] forCellReuseIdentifier:@"mag5sRecordTableViewCell"];
        [_mag5sTableView registerClass:[mag5sHadDataTableViewCell class] forCellReuseIdentifier:@"mag5sHadDataTableViewCell"];
    }
    return _mag5sTableView;
}
- (UIButton *)mag5sCancelButton{
    if (!_mag5sCancelButton) {
        _mag5sCancelButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
        [_mag5sCancelButton setTitle:@"Cancel" forState:UIControlStateNormal];
        [_mag5sCancelButton setTitleColor:[UIColor colorWithRed:0.22 green:0.26 blue:0.35 alpha:1.00] forState:UIControlStateNormal];
        _mag5sCancelButton.titleLabel.font = [UIFont systemFontOfSize:17.0];
        [_mag5sCancelButton addTarget:self action:@selector(mag5sCancelButtonAction) forControlEvents:UIControlEventTouchUpInside];
    }
    return _mag5sCancelButton;
}
- (NSMutableArray *)mag5sDatas{
    if (!_mag5sDatas) {
        _mag5sDatas = [NSMutableArray array];
    }
    return _mag5sDatas;
}
@end
