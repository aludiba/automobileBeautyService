//
//  LBLoginViewController.m
//  MacroSports
//
//  Created by user on 2020/7/7.
//  Copyright © 2020 macro. All rights reserved.
//

#import "LBLoginViewController.h"

@interface LBLoginViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)UIButton *LBCloseBtn;
@property(nonatomic, strong)UITableView *LBmainTable;
@end

@implementation LBLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self LBSetContentView];
}
#pragma mark - actions
- (void)LBSetContentView{
    [self.view addSubview:self.LBCloseBtn];
    [self.view addSubview:self.LBmainTable];
    [self.LBCloseBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view).offset(LBHeightNavBar);
        make.trailing.equalTo(self.view).offset(-32);
        make.width.mas_equalTo(22);
        make.height.mas_equalTo(22);
    }];
    [self.LBmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.LBCloseBtn.mas_bottom).offset(32);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
        make.bottom.equalTo(self.mas_bottomLayoutGuideTop);
    }];
}
- (void)LBCloseAction:(UIButton *)sender{
    [self dismissViewControllerAnimated:NO completion:^{
        
    }];
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 0;
}
#pragma mark - UIScrollViewDelegate
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    [self.view endEditing:YES];
}
#pragma mark - 关闭键盘
- (void)LBcloseKeyboard:(UITapGestureRecognizer *)recognizer {
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (UIButton *)LBCloseBtn{
    if (!_LBCloseBtn) {
        _LBCloseBtn = [[UIButton alloc] init];
        [_LBCloseBtn setImage:[UIImage imageNamed:@"LBSet_chahao"] forState:UIControlStateNormal];
        [_LBCloseBtn addTarget:self action:@selector(LBCloseAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _LBCloseBtn;
}
- (UITableView *)LBmainTable{
    if (!_LBmainTable) {
        _LBmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
        _LBmainTable.backgroundColor = [UIColor whiteColor];
        _LBmainTable.showsVerticalScrollIndicator = NO;
        _LBmainTable.scrollEnabled = NO;
        _LBmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _LBmainTable.delegate = self;
        _LBmainTable.dataSource = self;
        _LBmainTable.rowHeight = UITableViewAutomaticDimension;
        _LBmainTable.estimatedRowHeight = 55.0f;
        _LBmainTable.tableHeaderView = [[UIView alloc] init];
        _LBmainTable.tableFooterView = [[UIView alloc] init];
        UITapGestureRecognizer *LBsingleTapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(LBcloseKeyboard:)];
        LBsingleTapGesture.numberOfTapsRequired = 1;
        LBsingleTapGesture.cancelsTouchesInView = NO;
        [_LBmainTable addGestureRecognizer:LBsingleTapGesture];
        [self.view addGestureRecognizer:LBsingleTapGesture];
        UIPanGestureRecognizer *LBpanGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(LBcloseKeyboard:)];
        [self.view addGestureRecognizer:LBpanGesture];
    }
    return _LBmainTable;
}
@end

