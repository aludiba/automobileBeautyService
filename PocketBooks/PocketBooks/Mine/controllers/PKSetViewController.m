//
//  PKSetViewController.m
//  PocketBooks
//
//  Created by bykj on 2019/8/28.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PKSetViewController.h"
#import "PKSetViewModel.h"
#import "PKSetTableViewCell.h"
@interface PKSetViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSMutableArray *viewDataArray;
@property(nonatomic, strong)UITableView *mainTable;
@end

@implementation PKSetViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"我的";
    [self setContentView];
}
- (void)setContentView{
    self.view.backgroundColor = PKH_Color(244, 245, 246, 1);
    PKSetViewModel *viewModel = [[PKSetViewModel alloc] init];
    viewModel.title = @"昵称";
    [self.viewDataArray addObject:viewModel];
    
    PKSetViewModel *viewModel1 = [[PKSetViewModel alloc] init];
    viewModel1.title = @"密码修改";
    [self.viewDataArray addObject:viewModel1];
    
    PKSetViewModel *viewModel2 = [[PKSetViewModel alloc] init];
    viewModel2.title = @"固定开销";
    [self.viewDataArray addObject:viewModel2];
    
    PKSetViewModel *viewModel3 = [[PKSetViewModel alloc] init];
    viewModel3.title = @"每月限额";
    [self.viewDataArray addObject:viewModel3];
    
    PKSetViewModel *viewModel4 = [[PKSetViewModel alloc] init];
    viewModel4.title = @"类别管理";
    [self.viewDataArray addObject:viewModel4];
    
    
    PKSetViewModel *viewModel5 = [[PKSetViewModel alloc] init];
    viewModel5.title = @"退出";
    [self.viewDataArray addObject:viewModel5];
    
    [self.view addSubview:self.mainTable];
    [self.mainTable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
        make.bottom.equalTo(self.view);
    }];
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.viewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    PKSetViewModel *viewModel = self.viewDataArray[indexPath.row];
    PKSetTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PKSetTableViewCell" forIndexPath:indexPath];
    cell.model = viewModel;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];

}
#pragma mark - 属性懒加载
- (NSMutableArray *)viewDataArray{
    if (!_viewDataArray) {
        _viewDataArray = [[NSMutableArray alloc] init];
    }
    return _viewDataArray;
}
- (UITableView *)mainTable{
    if (!_mainTable) {
        _mainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _mainTable.backgroundColor = PKH_Color(244, 245, 246, 1);
        _mainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _mainTable.delegate = self;
        _mainTable.dataSource = self;
        _mainTable.rowHeight = UITableViewAutomaticDimension;
        _mainTable.estimatedRowHeight = 55.0f;
        _mainTable.tableHeaderView = [[UIView alloc] init];
        _mainTable.tableFooterView = [[UIView alloc] init];
        [_mainTable registerClass:[PKSetTableViewCell class] forCellReuseIdentifier:@"PKSetTableViewCell"];
    }
    return _mainTable;
}
@end
