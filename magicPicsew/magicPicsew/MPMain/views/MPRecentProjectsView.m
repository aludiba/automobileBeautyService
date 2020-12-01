//
//  MPRecentProjectsView.m
//  magicPicsew
//
//  Created by 123 on 2020/12/1.
//

#import "MPRecentProjectsView.h"
#import "MPRecentProjectsTableViewCell.h"

@interface MPRecentProjectsView()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) UITableView *MPtableView;


@end

@implementation MPRecentProjectsView

#pragma mark - 属性懒加载
- (UITableView *)MPtableView{
    if (!_MPtableView) {
        _MPtableView = [[UITableView alloc] init];
        _MPtableView = [[UITableView alloc] initWithFrame:self.bounds style:UITableViewStyleGrouped];
        [self addSubview:_MPtableView];
        _MPtableView.rowHeight = UITableViewAutomaticDimension;
        _MPtableView.sectionHeaderHeight = UITableViewAutomaticDimension;
        _MPtableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        _MPtableView.delegate = self;
        _MPtableView.dataSource = self;
        [_MPtableView registerClass:[MPRecentProjectsTableViewCell class] forCellReuseIdentifier:@"MPRecentProjectsTableViewCell"];
    }
    return _MPtableView;
}
@end
