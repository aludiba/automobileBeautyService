//
//  JBLoginViewController.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/4.
//  Copyright © 2020 hb. All rights reserved.
//

#import "JBLoginViewController.h"
#import "JBLoginTableViewCell.h"

@interface JBLoginViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)UITableView *JBmainTable;
@end

@implementation JBLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self JBsetContentView];
}
- (void)JBsetContentView{
    [self.view addSubview:self.JBmainTable];
    [self.JBmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
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
    JBLoginTableViewCell *JBcell = [tableView dequeueReusableCellWithIdentifier:@"JBLoginTableViewCell" forIndexPath:indexPath];
    JBcell.JBSuperVC = self;
    JBcell.selectionStyle = UITableViewCellSelectionStyleNone;
    return JBcell;
}
#pragma mark - 属性懒加载
- (UITableView *)JBmainTable{
    if (!_JBmainTable) {
        _JBmainTable = [[UITableView alloc] init];
        _JBmainTable.showsVerticalScrollIndicator = NO;
        _JBmainTable.scrollEnabled = NO;
        _JBmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _JBmainTable.delegate = self;
        _JBmainTable.dataSource = self;
        _JBmainTable.rowHeight = UITableViewAutomaticDimension;
        _JBmainTable.estimatedRowHeight = 55.0f;
        _JBmainTable.tableHeaderView = [[UIView alloc] init];
        _JBmainTable.tableFooterView = [[UIView alloc] init];
        [_JBmainTable registerClass:[JBLoginTableViewCell class] forCellReuseIdentifier:@"JBLoginTableViewCell"];
        UITapGestureRecognizer *singleTapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(closeKeyboard:)];
        singleTapGesture.numberOfTapsRequired = 1;
        singleTapGesture.cancelsTouchesInView = NO;
        [_JBmainTable addGestureRecognizer:singleTapGesture];
        [self.view addGestureRecognizer:singleTapGesture];
        UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(closeKeyboard:)];
        [self.view addGestureRecognizer:panGesture];
    }
    return _JBmainTable;
}
@end
