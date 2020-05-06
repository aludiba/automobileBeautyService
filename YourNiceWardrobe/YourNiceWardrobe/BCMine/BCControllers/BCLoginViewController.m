//
//  BCLoginViewController.m
//  YourNiceWardrobe
//
//  Created by 褚红彪 on 2020/5/4.
//  Copyright © 2020 hb. All rights reserved.
//

#import "BCLoginViewController.h"
#import "BCLoginTableViewCell.h"

@interface BCLoginViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)UITableView *BCmainTable;
@end

@implementation BCLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self BCsetContentView];
}
- (void)BCsetContentView{
    [self.view addSubview:self.BCmainTable];
    self.BCmainTable.backgroundColor = [UIColor blueColor];
    [self.BCmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
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
- (void)BCcloseKeyboard:(UITapGestureRecognizer *)recognizer {
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    BCLoginTableViewCell *BCcell = [tableView dequeueReusableCellWithIdentifier:@"BCLoginTableViewCell" forIndexPath:indexPath];
    BCcell.BCSuperVC = self;
    BCcell.selectionStyle = UITableViewCellSelectionStyleNone;
    return BCcell;
}
#pragma mark - 属性懒加载
- (UITableView *)BCmainTable{
    if (!_BCmainTable) {
        _BCmainTable = [[UITableView alloc] init];
        _BCmainTable.showsVerticalScrollIndicator = NO;
        _BCmainTable.scrollEnabled = NO;
        _BCmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _BCmainTable.delegate = self;
        _BCmainTable.dataSource = self;
        _BCmainTable.rowHeight = UITableViewAutomaticDimension;
        _BCmainTable.estimatedRowHeight = 55.0f;
        _BCmainTable.tableHeaderView = [[UIView alloc] init];
        _BCmainTable.tableFooterView = [[UIView alloc] init];
        [_BCmainTable registerClass:[BCLoginTableViewCell class] forCellReuseIdentifier:@"BCLoginTableViewCell"];
        UITapGestureRecognizer *BCsingleTapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(BCcloseKeyboard:)];
        BCsingleTapGesture.numberOfTapsRequired = 1;
        BCsingleTapGesture.cancelsTouchesInView = NO;
        [_BCmainTable addGestureRecognizer:BCsingleTapGesture];
        [self.view addGestureRecognizer:BCsingleTapGesture];
        UIPanGestureRecognizer *BCpanGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(BCcloseKeyboard:)];
        [self.view addGestureRecognizer:BCpanGesture];
    }
    return _BCmainTable;
}
@end
