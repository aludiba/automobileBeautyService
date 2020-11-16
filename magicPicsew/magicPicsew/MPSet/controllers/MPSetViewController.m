//
//  MPSetViewController.m
//  magicPicsew
//
//  Created by 123 on 2020/10/30.
//

#import "MPSetViewController.h"
#import "MPSetHeaderView.h"
#import "MPSetTableViewCell.h"
#import "MPSetModel.h"

@interface MPSetViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *MPtableView;

@property (nonatomic, strong) NSMutableArray *MParray;


@end

@implementation MPSetViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"设置";
}
#pragma mark - actions
- (void)MPsetContentView{
//    MPSetModel *
}
#pragma mark - TableView代理方法
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return self.MParray.count;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    NSMutableArray *array = self.MParray[section];
    return array.count;
}

#pragma mark - 属性懒加载
- (UITableView *)MPtableView{
    if (!_MPtableView) {
        _MPtableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
        _MPtableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        _MPtableView.delegate = self;
        _MPtableView.dataSource = self;
        [_MPtableView registerClass:[MPSetHeaderView class] forHeaderFooterViewReuseIdentifier:@"MPSetHeaderView"];
        [_MPtableView registerClass:[MPSetTableViewCell class] forCellReuseIdentifier:@"MPSetTableViewCell"];
    }
    return _MPtableView;
}
- (NSMutableArray *)MParray{
    if (!_MParray) {
        _MParray = [[NSMutableArray alloc] init];
    }
    return _MParray;
}
@end
