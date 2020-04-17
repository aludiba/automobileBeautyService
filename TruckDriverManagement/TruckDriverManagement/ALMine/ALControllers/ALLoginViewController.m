//
//  ALLoginViewController.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/4.
//  Copyright © 2020 hb. All rights reserved.
//

#import "ALLoginViewController.h"
#import "ALLoginTableViewCell.h"

@interface ALLoginViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)UITableView *ALmainTable;
@end

@implementation ALLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor blueColor];
    [self ALsetContentView];
}
- (void)ALsetContentView{
    [self.view addSubview:self.ALmainTable];
    self.ALmainTable.backgroundColor = [UIColor blueColor];
    [self.ALmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_topLayoutGuideBottom);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
        make.bottom.equalTo(self.view);
    }];
}
#pragma mark - UIScrollViewDelegate
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    [self.view endEditing:YES];
}
#pragma mark - 关闭键盘
- (void)closeKeyboard:(UITapGestureRecognizer *)recognizer {
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    ALLoginTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ALLoginTableViewCell" forIndexPath:indexPath];
    cell.ALSuperVC = self;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
#pragma mark - 属性懒加载
- (UITableView *)ALmainTable{
    if (!_ALmainTable) {
        _ALmainTable = [[UITableView alloc] init];
        _ALmainTable.showsVerticalScrollIndicator = NO;
        _ALmainTable.scrollEnabled = NO;
        _ALmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _ALmainTable.delegate = self;
        _ALmainTable.dataSource = self;
        _ALmainTable.rowHeight = UITableViewAutomaticDimension;
        _ALmainTable.estimatedRowHeight = 55.0f;
        _ALmainTable.tableHeaderView = [[UIView alloc] init];
        _ALmainTable.tableFooterView = [[UIView alloc] init];
        [_ALmainTable registerClass:[ALLoginTableViewCell class] forCellReuseIdentifier:@"ALLoginTableViewCell"];
        UITapGestureRecognizer *singleTapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(closeKeyboard:)];
        singleTapGesture.numberOfTapsRequired = 1;
        singleTapGesture.cancelsTouchesInView = NO;
        [_ALmainTable addGestureRecognizer:singleTapGesture];
        [self.view addGestureRecognizer:singleTapGesture];
        UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(closeKeyboard:)];
        [self.view addGestureRecognizer:panGesture];
    }
    return _ALmainTable;
}
@end
