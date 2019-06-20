//
//  auto4sHomeViewController.m
//  carMaintenanceCustomerServiceRecord
//
//  Created by bykj on 2019/6/12.
//  Copyright © 2019年 ppb. All rights reserved.
//

#import "autoBeuHomeViewController.h"
#import "autoBeuHeadImgTableViewCell.h"
@interface autoBeuHomeViewController ()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic, strong)UITableView *autoBeumainTable;
@end
@implementation autoBeuHomeViewController
- (void)viewDidLoad{
    [super viewDidLoad];
    CGFloat aRedValue = arc4random() % 255;
    CGFloat aGreenValue = arc4random() % 255;
    CGFloat aBlueValue = arc4random() % 255;
    self.view.backgroundColor = [UIColor colorWithRed:aRedValue/256.0 green:aGreenValue/256.0 blue:aBlueValue/256.0 alpha:1.0];
    self.title = @"Home";
    [self.autoBeumainTable reloadData];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row == 0) {
        autoBeuHeadImgTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"autoBeuHeadImgTableViewCell" forIndexPath:indexPath];
        return cell;
    }else{
        return nil;
    }
}
#pragma mark - 属性懒加载
- (UITableView *)autoBeumainTable{
    if (!_autoBeumainTable) {
        _autoBeumainTable = [[UITableView alloc] init];
        CGFloat aRedValue = arc4random() % 255;
        CGFloat aGreenValue = arc4random() % 255;
        CGFloat aBlueValue = arc4random() % 255;
        _autoBeumainTable.backgroundColor = [UIColor colorWithRed:aRedValue/256.0 green:aGreenValue/256.0 blue:aBlueValue/256.0 alpha:1.0];
        _autoBeumainTable.rowHeight = UITableViewAutomaticDimension;
        _autoBeumainTable.estimatedRowHeight = 55.0f;
        _autoBeumainTable.dataSource = self;
        _autoBeumainTable.delegate = self;
        _autoBeumainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        [_autoBeumainTable registerClass:[autoBeuHeadImgTableViewCell class] forCellReuseIdentifier:@"autoBeuHeadImgTableViewCell"];
        [self.view addSubview:_autoBeumainTable];
        [_autoBeumainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.top.equalTo(self.mas_topLayoutGuideBottom);
            make.bottom.equalTo(self.mas_bottomLayoutGuideBottom);
        }];
    }
    return _autoBeumainTable;
}
@end
