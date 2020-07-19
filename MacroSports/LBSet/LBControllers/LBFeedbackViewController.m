//
//  LBFeedbackViewController.m
//  MacroSports
//
//  Created by user on 2020/7/8.
//  Copyright © 2020 macro. All rights reserved.
//

#import "LBFeedbackViewController.h"
#import "LBFeedbackModel.h"
#import "LBFeedbackTitleEditCellTableViewCell.h"
#import "LBFeedbackTableViewCell.h"

@interface LBFeedbackViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)LBFeedbackModel *LBfeedbackmodel;
@property(nonatomic, strong)UITableView *LBmainTable;
@property(nonatomic, strong)UIButton *LBfeedbackBtn;
@end

@implementation LBFeedbackViewController
- (void)viewDidLoad{
    [super viewDidLoad];
    self.title = @"意见反馈";
    [self.LBmainTable reloadData];
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 2;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row == 0) {
        LBFeedbackTitleEditCellTableViewCell *LBcell = [tableView dequeueReusableCellWithIdentifier:@"LBFeedbackTitleEditCellTableViewCell" forIndexPath:indexPath];
        LBcell.LBfeedbackmodel = self.LBfeedbackmodel;
        LBcell.selectionStyle = UITableViewCellSelectionStyleNone;
        return LBcell;
    }else{
        LBFeedbackTableViewCell *LBcell = [tableView dequeueReusableCellWithIdentifier:@"LBFeedbackTableViewCell" forIndexPath:indexPath];
        LBcell.LBfeedbackmodel = self.LBfeedbackmodel;
        LBcell.selectionStyle = UITableViewCellSelectionStyleNone;
        return LBcell;
    }
}
#pragma mark - actions
- (void)LBfeedBackBtnAction:(UIButton *)sender{
    if (!self.LBfeedbackmodel.LBTitleContent.length) {
        [MBProgressHUD LBshowReminderText:@"请输入联系方式"];
        return;
    }
    if (!self.LBfeedbackmodel.LBFeedbackContent.length) {
        [MBProgressHUD LBshowReminderText:@"请输入反馈内容"];
        return;
    }
    NSDictionary *LBpar = @{
        @"LBfeedbackcontact":self.LBfeedbackmodel.LBTitleContent,
        @"LBfeedbackcontent":self.LBfeedbackmodel.LBFeedbackContent
    };
    AVUser *LBauthor = [AVUser currentUser];
    AVObject *LBdataList = [AVObject objectWithClassName:@"LBDqdFeedback"];
    for (NSString *key in LBpar.allKeys) {
        [LBdataList setObject:[LBpar objectForKey:key]  forKey:key];
    }
    [LBdataList setObject:LBauthor forKey:@"author"];
    [LBdataList saveInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
                //创建成功后的动作
            [MBProgressHUD LBshowReminderText:@"发送成功"];
            [self.navigationController popViewControllerAnimated:YES];
        } else if (error){
                //发生错误后的动作
            [MBProgressHUD LBshowReminderText:@"请稍后重试"];
        } else {
            [MBProgressHUD LBshowReminderText:@"请稍后重试"];
        }
    }];
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
- (LBFeedbackModel *)LBfeedbackmodel{
    if (!_LBfeedbackmodel) {
        _LBfeedbackmodel = [[LBFeedbackModel alloc] init];
        _LBfeedbackmodel.LBTitle = @"联系方式：";
        _LBfeedbackmodel.LBTitleDefault = @"请输入联系方式";
        _LBfeedbackmodel.LBFeedback = @"反馈内容：";
    }
    return _LBfeedbackmodel;
}
- (UITableView *)LBmainTable{
    if (!_LBmainTable) {
        _LBmainTable = [[UITableView alloc] init];
        _LBmainTable.showsVerticalScrollIndicator = NO;
        _LBmainTable.scrollEnabled = NO;
        _LBmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _LBmainTable.delegate = self;
        _LBmainTable.dataSource = self;
        _LBmainTable.rowHeight = UITableViewAutomaticDimension;
        _LBmainTable.estimatedRowHeight = 55.0f;
        _LBmainTable.tableHeaderView = [[UIView alloc] init];
        _LBmainTable.tableFooterView = [[UIView alloc] init];
        [_LBmainTable registerClass:[LBFeedbackTitleEditCellTableViewCell class] forCellReuseIdentifier:@"LBFeedbackTitleEditCellTableViewCell"];
        [_LBmainTable registerClass:[LBFeedbackTableViewCell class] forCellReuseIdentifier:@"LBFeedbackTableViewCell"];
        [_LBmainTable registerClass:[UITableViewCell class] forCellReuseIdentifier:@"UITableViewCell"];
        UITapGestureRecognizer *LBsingleTapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(LBcloseKeyboard:)];
        LBsingleTapGesture.numberOfTapsRequired = 1;
        LBsingleTapGesture.cancelsTouchesInView = NO;
        [_LBmainTable addGestureRecognizer:LBsingleTapGesture];
        [self.view addGestureRecognizer:LBsingleTapGesture];
        UIPanGestureRecognizer *LBpanGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(LBcloseKeyboard:)];
        [self.view addGestureRecognizer:LBpanGesture];
        [self.view addSubview:self.LBfeedbackBtn];
        [self.LBfeedbackBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self.view);
            make.bottom.equalTo(self.view).offset(-LBHeightNavContentBar-120);
            make.width.mas_equalTo(200);
            make.height.mas_equalTo(44);
        }];
        [self.view addSubview:_LBmainTable];
        [_LBmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.view);
            make.top.equalTo(self.mas_topLayoutGuideBottom);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.LBfeedbackBtn.mas_top).offset(-20);
        }];
    }
    return _LBmainTable;
}
- (UIButton *)LBfeedbackBtn{
    if (!_LBfeedbackBtn) {
        _LBfeedbackBtn = [[UIButton alloc] init];
        _LBfeedbackBtn.backgroundColor = [UIColor greenColor];
        _LBfeedbackBtn.layer.cornerRadius = 4.0f;
        _LBfeedbackBtn.layer.masksToBounds = YES;
        [_LBfeedbackBtn setTitle:@"反馈" forState:UIControlStateNormal];
        [_LBfeedbackBtn.titleLabel setFont:[UIFont systemFontOfSize:18]];
        [_LBfeedbackBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_LBfeedbackBtn addTarget:self action:@selector(LBfeedBackBtnAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _LBfeedbackBtn;
}
@end
