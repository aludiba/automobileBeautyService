//
//  LBTeamAddViewController.m
//  MacroSports
//
//  Created by user on 2020/7/4.
//  Copyright © 2020 macro. All rights reserved.
//

#import "LBTeamAddViewController.h"
#import "LBTeamAddTitleTableViewCell.h"
#import "LBTeamAddTableViewCell.h"
#import "LBTeamAddViewModel.h"

@interface LBTeamAddViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)UITableView *LBmainTable;//列表
@property(nonatomic, strong)UIButton *LBAddBtn;//添加按钮
@property(nonatomic, strong)LBTeamAddViewModel *LBTeamAddviewmodel;//添加按钮

@end

@implementation LBTeamAddViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"添加球队";
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(LBkeyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];
    [self LBSetContentView];
}
- (void)LBkeyboardWillHide:(NSNotification *)LBnote{
    //取得键盘弹出时间
    CGFloat LBduration = [LBnote.userInfo[UIKeyboardAnimationDurationUserInfoKey] floatValue];
    //取得键盘高度
       [UIView animateWithDuration:LBduration delay:0 options:7 << 16 animations:^{
           self.view.transform = CGAffineTransformIdentity;
           self.view.frame = self.view.bounds;
       } completion:nil];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self LBSetContentLayout];
}
#pragma mark - actions
- (void)LBSetContentView{
    [self.view addSubview:self.LBmainTable];
    [self.view addSubview:self.LBAddBtn];
}
- (void)LBSetContentLayout{
    [self.LBmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(30);
        make.leading.equalTo(self.view).offset(20);
        make.trailing.equalTo(self.view).offset(-20);
        make.height.mas_equalTo(300);
    }];
    [self.LBAddBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.LBmainTable.mas_bottom).offset(30);
        make.leading.equalTo(self.view).offset(20);
        make.trailing.equalTo(self.view).offset(-20);
        make.height.mas_equalTo(60);
    }];
}
- (void)LBAddAction:(UIButton *)sender{
    NSLog(@"添加球队~~~");
}
#pragma mark - UIScrollViewDelegate
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    [self.view endEditing:YES];
}
#pragma mark - 关闭键盘
- (void)LBcloseKeyboard:(UITapGestureRecognizer *)recognizer{
    [self.view endEditing:YES];
}
#pragma mark - UITableView代理
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 2;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row == 0) {
        LBTeamAddTitleTableViewCell *LBCell = [tableView dequeueReusableCellWithIdentifier:@"LBTeamAddTitleTableViewCell" forIndexPath:indexPath];
        LBCell.selectionStyle = UITableViewCellSelectionStyleNone;
        return LBCell;
    }else{
        NSString *LBKMyCellID = @"LBTeamAddTableViewCell";
        NSString *LBcellID = [NSString stringWithFormat:@"%@%zd",LBKMyCellID, indexPath.row];
        LBTeamAddTableViewCell *LBcell = [tableView dequeueReusableCellWithIdentifier:LBcellID];
        if (!LBcell) {
            LBcell = [[LBTeamAddTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:LBcellID];
        }
        LBcell.LBViewModel = self.LBTeamAddviewmodel;
        LBcell.selectionStyle = UITableViewCellSelectionStyleNone;
        __weak typeof(self) weakSelf = self;
        LBcell.LBTeamAddTableEditB = ^(LBTeamAddTableViewCell * _Nonnull cell) {
            if (LBcell.LBcontentHeight > self.LBTeamAddviewmodel.LBEditHeight) {
            [UIView animateWithDuration:0.2 animations:^{
                CGRect LBframe = self.view.frame;
                LBframe.origin.y = LBframe.origin.y -  40;
                self.view.frame = LBframe;
            }];
            }
            self.LBTeamAddviewmodel.LBEditHeight = cell.LBcontentHeight;
            [weakSelf.LBmainTable beginUpdates];
            [weakSelf.LBmainTable endUpdates];
        };
        return LBcell;
    }
}
#pragma mark - 属性懒加载
- (UITableView *)LBmainTable{
    if (!_LBmainTable) {
        _LBmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
        _LBmainTable.backgroundColor = [UIColor systemGreenColor];
        _LBmainTable.layer.cornerRadius = 8.0f;
        _LBmainTable.layer.masksToBounds = YES;
        _LBmainTable.rowHeight = UITableViewAutomaticDimension;
        _LBmainTable.estimatedRowHeight = 48.0f;
        _LBmainTable.sectionHeaderHeight = UITableViewAutomaticDimension;
        _LBmainTable.estimatedSectionHeaderHeight = 48.0f;
        _LBmainTable.dataSource = self;
        _LBmainTable.delegate = self;
        _LBmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        [_LBmainTable registerClass:[LBTeamAddTitleTableViewCell class] forCellReuseIdentifier:@"LBTeamAddTitleTableViewCell"];
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
- (UIButton *)LBAddBtn{
    if (!_LBAddBtn) {
        _LBAddBtn = [[UIButton alloc] init];
        _LBAddBtn.backgroundColor = [UIColor systemGreenColor];
        [_LBAddBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_LBAddBtn.titleLabel setFont:[UIFont systemFontOfSize:25]];
        [_LBAddBtn setTitle:@"添加球队" forState:UIControlStateNormal];
        _LBAddBtn.layer.cornerRadius = 8.0f;
        _LBAddBtn.layer.masksToBounds = YES;
        [_LBAddBtn addTarget:self action:@selector(LBAddAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _LBAddBtn;
}
- (LBTeamAddViewModel *)LBTeamAddviewmodel{
    if (!_LBTeamAddviewmodel) {
        _LBTeamAddviewmodel = [[LBTeamAddViewModel alloc] init];
        _LBTeamAddviewmodel.LBTitle = @"备注:";
        _LBTeamAddviewmodel.LBDefault = @"请输入备注";
    }
    return _LBTeamAddviewmodel;
}
@end
