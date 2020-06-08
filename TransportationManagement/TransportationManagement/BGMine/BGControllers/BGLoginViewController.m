//
//  BGLoginViewController.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/4.
//  Copyright © 2020 hb. All rights reserved.
//

#import "BGLoginViewController.h"
#import "BGLoginTableViewCell.h"

@interface BGLoginViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)UITableView *BGmainTable;
@end

@implementation BGLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self BGsetContentView];
}
- (void)BGsetContentView{
    [self.view addSubview:self.BGmainTable];
    [self.BGmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
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
    BGLoginTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"BGLoginTableViewCell" forIndexPath:indexPath];
    cell.BGSuperVC = self;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
#pragma mark - 属性懒加载
- (UITableView *)BGmainTable{
    if (!_BGmainTable) {
        _BGmainTable = [[UITableView alloc] init];
        _BGmainTable.showsVerticalScrollIndicator = NO;
        _BGmainTable.scrollEnabled = NO;
        _BGmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _BGmainTable.delegate = self;
        _BGmainTable.dataSource = self;
        _BGmainTable.rowHeight = UITableViewAutomaticDimension;
        _BGmainTable.estimatedRowHeight = 55.0f;
        _BGmainTable.tableHeaderView = [[UIView alloc] init];
        _BGmainTable.tableFooterView = [[UIView alloc] init];
        [_BGmainTable registerClass:[BGLoginTableViewCell class] forCellReuseIdentifier:@"BGLoginTableViewCell"];
        UITapGestureRecognizer *singleTapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(closeKeyboard:)];
        singleTapGesture.numberOfTapsRequired = 1;
        singleTapGesture.cancelsTouchesInView = NO;
        [_BGmainTable addGestureRecognizer:singleTapGesture];
        [self.view addGestureRecognizer:singleTapGesture];
        UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(closeKeyboard:)];
        [self.view addGestureRecognizer:panGesture];
    }
    return _BGmainTable;
}
@end
