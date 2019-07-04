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
@interface stbaAddressBookViewController ()<UITextFieldDelegate,UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) UITextField *stbaSearchTextField;
@property(nonatomic, strong)NSMutableArray *dataArray;
@property(nonatomic, strong)UITableView *mainTable;
@end
@implementation stbaAddressBookViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Address Book";
    [self setSearchText];
}
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
    UIImageView *searchTextLeftImgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"autoBeubtn_search_new"]];
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
#pragma mark - UIScrollViewDelegate
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView {
    [self.view endEditing:YES];
}
#pragma mark - UITableViewDelegate

#pragma mark - 属性懒加载
- (NSMutableArray *)dataArray{
    if (!_dataArray) {
        _dataArray = [[NSMutableArray alloc] init];
    }
    return _dataArray;
}
- (UITableView *)mainTable{
    if (!_mainTable) {
        _mainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _mainTable.backgroundColor = [UIColor groupTableViewBackgroundColor];
        _mainTable.delegate = self;
        _mainTable.dataSource = self;
        _mainTable.rowHeight = UITableViewAutomaticDimension;
        _mainTable.estimatedRowHeight = 89.0f;
        _mainTable.separatorColor = [UIColor colorWithRed:0.92 green:0.92 blue:0.92 alpha:1.00];
        _mainTable.separatorInset = UIEdgeInsetsMake(0, 16, 0, 16);
        _mainTable.tableHeaderView = [[UIView alloc] init];
        _mainTable.tableFooterView = [[UIView alloc] init];
        [self.view addSubview:_mainTable];
        [_mainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.stbaSearchTextField.mas_bottom).offset(5);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view);
        }];
    }
    return _mainTable;
}
@end
