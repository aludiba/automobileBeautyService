//
//  EBLoginViewController.m
//  SupermarketOperationAssistant
//
//  Created by 褚红彪 on 2020/5/12.
//  Copyright © 2020 HEB. All rights reserved.
//

#import "EBLoginViewController.h"
#import "EBLoginTableViewCell.h"

@interface EBLoginViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)UITableView *EBmainTable;
@end

@implementation EBLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self EBsetContentView];
}
- (void)EBsetContentView{
    [self.view addSubview:self.EBmainTable];
    self.EBmainTable.backgroundColor = [UIColor whiteColor];
    [self.EBmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
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
- (void)EBcloseKeyboard:(UITapGestureRecognizer *)recognizer {
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    EBLoginTableViewCell *EBcell = [tableView dequeueReusableCellWithIdentifier:@"EBLoginTableViewCell" forIndexPath:indexPath];
    EBcell.EBSuperVC = self;
    EBcell.selectionStyle = UITableViewCellSelectionStyleNone;
    return EBcell;
}
#pragma mark - 属性懒加载
- (UITableView *)EBmainTable{
    if (!_EBmainTable) {
        _EBmainTable = [[UITableView alloc] init];
        _EBmainTable.showsVerticalScrollIndicator = NO;
        _EBmainTable.scrollEnabled = NO;
        _EBmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _EBmainTable.delegate = self;
        _EBmainTable.dataSource = self;
        _EBmainTable.rowHeight = UITableViewAutomaticDimension;
        _EBmainTable.estimatedRowHeight = 55.0f;
        _EBmainTable.tableHeaderView = [[UIView alloc] init];
        _EBmainTable.tableFooterView = [[UIView alloc] init];
        [_EBmainTable registerClass:[EBLoginTableViewCell class] forCellReuseIdentifier:@"EBLoginTableViewCell"];
        UITapGestureRecognizer *EBsingleTapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(EBcloseKeyboard:)];
        EBsingleTapGesture.numberOfTapsRequired = 1;
        EBsingleTapGesture.cancelsTouchesInView = NO;
        [_EBmainTable addGestureRecognizer:EBsingleTapGesture];
        [self.view addGestureRecognizer:EBsingleTapGesture];
        UIPanGestureRecognizer *EBpanGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(EBcloseKeyboard:)];
        [self.view addGestureRecognizer:EBpanGesture];
    }
    return _EBmainTable;
}

@end
