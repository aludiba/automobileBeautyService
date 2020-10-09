//
//  SDSearchViewController.m
//  Simple Diary
//
//  Created by bykj on 2019/7/20.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "SDSearchViewController.h"
#import "SDWriteDiaryDetailViewController.h"
#import "SDShowDiaryTableViewCell.h"
#import "SDWriteDiaryModel.h"
@interface SDSearchViewController ()<UITextFieldDelegate,UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) UITextField *sdSearchTextField;
@property (nonatomic, strong) UIButton *sdScancelButton;
@property (nonatomic, strong) UITableView *sdTableView;
@property(nonatomic, strong)  NSArray *sdSourceArray;
@property (nonatomic, strong) NSMutableArray *sdBeudatas;
@property (nonatomic, assign) Boolean autoBeufirstEnter;
@end

@implementation SDSearchViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = NSLocalizedString(@"搜索", nil);
    [self setSearchText];
    AVQuery *bquery = [AVQuery queryWithClassName:@"Diary"];
    AVUser *author = [AVUser currentUser];
    [bquery whereKey:@"author" equalTo:author];
    //查找GameScore表的数据
    [bquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
        if (error) {
            [MBProgressHUD SDshowReminderText:NSLocalizedString(@"请稍后再试", nil)];
        }else{
            NSMutableArray *tempArray = [[NSMutableArray alloc] init];
            for (int i = (int)(array.count - 1); i > -1; i--) {
                AVObject *obj = array[i];
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
            self.sdSourceArray = [tempArray copy];
        }
    }];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.autoBeufirstEnter = YES;
    if (self.autoBeufirstEnter) {
        [self.sdSearchTextField becomeFirstResponder];
        self.autoBeufirstEnter = NO;
    }
}
- (void)setSearchText{
    self.sdSearchTextField = [[UITextField alloc] init];
    self.sdSearchTextField.backgroundColor = SDH_Color(242, 242, 242, 1);
    [self.view addSubview:self.sdSearchTextField];
    [self.sdSearchTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(5);
        make.leading.equalTo(self.view).offset(12);
        make.width.mas_equalTo(SDWIDTH - 24);
        make.height.mas_equalTo(30);
    }];
    self.sdSearchTextField.font = [UIFont fontWithName:@"PingFangSC-Regular" size:13];
    self.sdSearchTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
    self.sdSearchTextField.leftViewMode = UITextFieldViewModeWhileEditing;
    //设置圆角
    self.sdSearchTextField.layer.cornerRadius = 4;
    //将多余的部分切掉
    UIView *searchTextLeftView = [[UIView alloc] init];
    [self.sdSearchTextField addSubview:searchTextLeftView];
    [searchTextLeftView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.sdSearchTextField);
        make.leading.equalTo(self.sdSearchTextField);
        make.width.mas_equalTo(39);
        make.height.mas_equalTo(30);
    }];
    [self.sdSearchTextField setLeftView:searchTextLeftView];
    searchTextLeftView.backgroundColor = SDH_Color(242, 242, 242, 1);
    UIImageView *searchTextLeftImgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"SD_search"]];
    [searchTextLeftView addSubview:searchTextLeftImgView];
    [searchTextLeftImgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(searchTextLeftView);
        make.centerY.equalTo(searchTextLeftView);
        make.width.mas_equalTo(15);
        make.height.mas_equalTo(15);
    }];
    self.sdSearchTextField.placeholder = NSLocalizedString(@"输入要搜索的内容", nil);
    self.sdSearchTextField.leftViewMode = UITextFieldViewModeAlways;
    self.sdSearchTextField.delegate = self;
    self.sdSearchTextField.returnKeyType = UIReturnKeySearch;
}
- (void)sdLoadData{
    NSString *keywords = [self.sdSearchTextField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    if ([keywords isEqualToString:@""]) {
        return;
    }
    [self.sdBeudatas removeAllObjects];
    NSString *keywordString = [self.sdSearchTextField.text stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLPathAllowedCharacterSet]];
    for (int i = 0; i < self.sdSourceArray.count; i++) {
        SDWriteDiaryModel *model = self.sdSourceArray[i];
        if (model.content.length >= keywordString.length) {
            if([model.content rangeOfString:keywordString].location != NSNotFound)
            {
                [self.sdBeudatas addObject:model];
            }
        }
    }
    [self.sdTableView reloadData];
}
#pragma mark - UITextFieldDelegate
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
    [self.sdBeudatas removeAllObjects];
    [self.sdTableView reloadData];
    return YES;
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    NSString *keywords = [textField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    if ([keywords isEqualToString:@""]) {
        //没有输入搜索关键字
        return NO;
    }
    [textField resignFirstResponder];
    [self sdLoadData];
    return YES;
}
#pragma mark - UIScrollViewDelegate
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView {
    [self.view endEditing:YES];
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.sdBeudatas.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    SDWriteDiaryModel *model = self.sdBeudatas[indexPath.row];
    SDShowDiaryTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"SDShowDiaryTableViewCell" forIndexPath:indexPath];
    cell.model = model;
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    SDWriteDiaryModel *model = self.sdBeudatas[indexPath.row];
    SDWriteDiaryDetailViewController *detailVC = [[SDWriteDiaryDetailViewController alloc] init];
    detailVC.model = model;
    detailVC.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:detailVC animated:YES];
}
#pragma mark - actions
- (void)sdScancelButtonAction{
    [self.navigationController popViewControllerAnimated:YES];
}
#pragma mark - 属性懒加载
- (UITableView *)sdTableView {
    if (!_sdTableView) {
        _sdTableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _sdTableView.backgroundColor = [UIColor groupTableViewBackgroundColor];
        _sdTableView.delegate = self;
        _sdTableView.dataSource = self;
        _sdTableView.rowHeight = UITableViewAutomaticDimension;
        _sdTableView.estimatedRowHeight = 55.0f;
        _sdTableView.separatorColor = [UIColor colorWithRed:0.92 green:0.92 blue:0.92 alpha:1.00];
        _sdTableView.separatorInset = UIEdgeInsetsMake(0, 16, 0, 16);
        _sdTableView.tableHeaderView = [[UIView alloc] init];
        _sdTableView.tableFooterView = [[UIView alloc] init];
        [self.view addSubview:_sdTableView];
        [_sdTableView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.sdSearchTextField.mas_bottom).offset(5);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view);
        }];
        
        [_sdTableView registerClass:[SDShowDiaryTableViewCell class] forCellReuseIdentifier:@"SDShowDiaryTableViewCell"];
    }
    return _sdTableView;
}
- (UIButton *)sdScancelButton{
    if (!_sdScancelButton) {
        _sdScancelButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
        [_sdScancelButton setTitle:NSLocalizedString(@"取消", nil) forState:UIControlStateNormal];
        [_sdScancelButton setTitleColor:[UIColor colorWithRed:0.22 green:0.26 blue:0.35 alpha:1.00] forState:UIControlStateNormal];
        _sdScancelButton.titleLabel.font = [UIFont systemFontOfSize:17.0];
        [_sdScancelButton addTarget:self action:@selector(sdScancelButtonAction) forControlEvents:UIControlEventTouchUpInside];
    }
    return _sdScancelButton;
}
- (NSMutableArray *)sdBeudatas{
    if (!_sdBeudatas) {
        _sdBeudatas = [NSMutableArray array];
    }
    return _sdBeudatas;
}
@end
