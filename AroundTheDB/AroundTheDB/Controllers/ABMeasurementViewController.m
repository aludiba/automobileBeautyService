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

#import "ABMeasurementReferenceTableViewCell.h"
@interface ABMeasurementViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)UITableView *mainTable;
@end

@implementation ABMeasurementViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = ABH_Color(15, 18, 39, 1);
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden = YES;
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.navigationController.navigationBar.hidden = NO;
}
#pragma mark - 属性懒加载
- (UITableView *)mainTable{
    if (!_mainTable) {
        _mainTable = [[UITableView alloc] init];
        _mainTable.backgroundColor = ABH_Color(15, 18, 39, 1);
        _mainTable.delegate = self;
        _mainTable.dataSource = self;
        [_mainTable registerClass:[ABMeasurementTitleInputTableViewCell class] forCellReuseIdentifier:@"ABMeasurementTitleInputTableViewCell"];
        [_mainTable registerClass:[ABMeasurementPositionTableViewCell class] forCellReuseIdentifier:@"ABMeasurementPositionTableViewCell"];
        
        [_mainTable registerClass:[ABMeasurementReferenceTableViewCell class] forCellReuseIdentifier:@"ABMeasurementReferenceTableViewCell"];
        [self.view addSubview:_mainTable];
        [_mainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.view);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view);
        }];
    }
    return _mainTable;
}
@end
