//
//  ABMeasurementViewController.m
//  AroundTheDB
//
//  Created by bykj on 2019/8/14.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "ABMeasurementViewController.h"
#import "ABMeasurementTitleInputTableViewCell.h"
#import "ABMeasurementPositionTableViewCell.h"
#import "ABMeasurementTestDBTableViewCell.h"
#import "ABMeasurementReferenceTableViewCell.h"
#import "ABMeasurementModel.h"
@interface ABMeasurementViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)UITableView *mainTable;
@property(nonatomic, strong)ABMeasurementModel *model;
@end

@implementation ABMeasurementViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = ABH_Color(15, 18, 39, 1);
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden = YES;
}
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [self.mainTable reloadData];
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.navigationController.navigationBar.hidden = NO;
}
- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate{
    [self.view endEditing:YES];
}
- (void)closeKeyBoard:(UIGestureRecognizer *)ges{
    [self.view endEditing:YES];
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 4;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSInteger row = indexPath.row;
    if (row == 0) {
        ABMeasurementTitleInputTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ABMeasurementTitleInputTableViewCell" forIndexPath:indexPath];
        cell.model = self.model;
        __weak typeof(self) weakSelf = self;
        cell.ABMeasurementTitleInputB = ^(ABMeasurementTitleInputTableViewCell * _Nonnull cell) {
            weakSelf.model.title = cell.measurementTitle;
        };
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }else if (row == 1){
        ABMeasurementPositionTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ABMeasurementPositionTableViewCell" forIndexPath:indexPath];
        cell.model = self.model;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }else if (row == 2){
        ABMeasurementTestDBTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ABMeasurementTestDBTableViewCell" forIndexPath:indexPath];
        cell.model = self.model;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }else{
        ABMeasurementReferenceTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ABMeasurementReferenceTableViewCell" forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }
}
#pragma mark - 属性懒加载
- (ABMeasurementModel *)model{
    if (!_model) {
        _model = [[ABMeasurementModel alloc] init];
    }
    return _model;
}
- (UITableView *)mainTable{
    if (!_mainTable) {
        _mainTable = [[UITableView alloc] init];
        _mainTable.backgroundColor = ABH_Color(15, 18, 39, 1);
        _mainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _mainTable.estimatedRowHeight = 55.0f;
        _mainTable.rowHeight = UITableViewAutomaticDimension;
        _mainTable.delegate = self;
        _mainTable.dataSource = self;
        [_mainTable registerClass:[ABMeasurementTitleInputTableViewCell class] forCellReuseIdentifier:@"ABMeasurementTitleInputTableViewCell"];
        [_mainTable registerClass:[ABMeasurementPositionTableViewCell class] forCellReuseIdentifier:@"ABMeasurementPositionTableViewCell"];
        [_mainTable registerClass:[ABMeasurementTestDBTableViewCell class] forCellReuseIdentifier:@"ABMeasurementTestDBTableViewCell"];
        [_mainTable registerClass:[ABMeasurementReferenceTableViewCell class] forCellReuseIdentifier:@"ABMeasurementReferenceTableViewCell"];
        [self.view addSubview:_mainTable];
        [_mainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.view);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view);
        }];
        UITapGestureRecognizer *tapGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(closeKeyBoard:)];
        [self.view addGestureRecognizer:tapGes];
        [_mainTable addGestureRecognizer:tapGes];
    }
    return _mainTable;
}
@end
