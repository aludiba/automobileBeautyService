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

@end

@implementation LBFeedbackViewController
- (void)viewDidLoad{
    [super viewDidLoad];
    self.title = @"意见反馈";
    [self.LBmainTable reloadData];
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 3;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row == 0) {
        LBFeedbackTitleEditCellTableViewCell *LBcell = [tableView dequeueReusableCellWithIdentifier:@"LBFeedbackTitleEditCellTableViewCell" forIndexPath:indexPath];
        LBcell.LBfeedbackmodel = self.LBfeedbackmodel;
        LBcell.selectionStyle = UITableViewCellSelectionStyleNone;
        return LBcell;
    }else if (indexPath.row == 1){
        LBFeedbackTableViewCell *LBcell = [tableView dequeueReusableCellWithIdentifier:@"LBFeedbackTableViewCell" forIndexPath:indexPath];
        LBcell.LBfeedbackmodel = self.LBfeedbackmodel;
        LBcell.selectionStyle = UITableViewCellSelectionStyleNone;
        return LBcell;
    }else{
        UITableViewCell *LBcell = [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell" forIndexPath:indexPath];
        LBcell.selectionStyle = UITableViewCellSelectionStyleNone;
        return LBcell;
    }
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
        [self.view addSubview:_LBmainTable];
        [_LBmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.view);
            make.top.equalTo(self.mas_topLayoutGuideBottom);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view);
        }];
    }
    return _LBmainTable;
}
@end
