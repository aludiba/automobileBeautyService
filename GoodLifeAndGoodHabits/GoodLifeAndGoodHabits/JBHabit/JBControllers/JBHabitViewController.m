//
//  JBHabitViewController.m
//  GoodLifeAndGoodHabits
//
//  Created by user on 2020/6/9.
//  Copyright © 2020 user. All rights reserved.
//

#import "JBHabitViewController.h"
#import "JBLoginViewController.h"
#import "FSScrollContentView.h"
#import "FSSegmentTitleView.h"
#import "JBHabitChildViewController.h"
#import "JBHabitAddViewController.h"

@interface JBHabitViewController ()<FSPageContentViewDelegate,FSSegmentTitleViewDelegate>
@property(nonatomic, assign)JBHabitChildType JBHabitType;
@property(nonatomic, strong)NSMutableArray *JBtitleArray;
@property(nonatomic, strong)NSMutableArray *JBchildVCsArray;
@property (nonatomic, strong) FSSegmentTitleView *JBtitleView;
@property (nonatomic, strong) FSPageContentView *JBpageContentView;
@property(nonatomic, strong)UIButton *JBaddButton;
@end

@implementation JBHabitViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = NSLocalizedString(@"习惯", nil);
    [self JBsetContentView];
}
#pragma mark - actions
- (void)JBaddAction:(UIButton *)JBsender{
    AVUser *JBbUser = [AVUser currentUser];
    if (JBbUser) {
        JBHabitAddViewController *JBHabitAddVC = [[JBHabitAddViewController alloc] init];
        JBHabitAddVC.JBHabitType = self.JBHabitType;
        JBHabitAddVC.JBsuperVC = self;
        JBHabitAddVC.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:JBHabitAddVC animated:YES];
    }else{
        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"提醒", nil) message:NSLocalizedString(@"请先登录", nil) preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            JBLoginViewController *JBLoginVC = [[JBLoginViewController alloc] init];
            JBLoginVC.modalPresentationStyle = UIModalPresentationFullScreen;
            [self presentViewController:JBLoginVC animated:YES completion:^{
                
            }];
        }];
        [alertVC addAction:cancelAction];
        [alertVC addAction:sureAction];
        [self presentViewController:alertVC animated:YES completion:nil];
    }
}
- (void)JBsetContentView{
    [self.view addSubview:self.JBtitleView];
    [self.JBtitleView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_topLayoutGuideBottom);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
        make.height.mas_equalTo(50);
    }];
    [self.view addSubview:self.JBpageContentView];
    [self.JBpageContentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.JBtitleView.mas_bottom);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
        make.bottom.equalTo(self.view).offset(-JBHeightTabBar);
    }];
    [self.view addSubview:self.JBaddButton];
    [self.JBaddButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.view).offset(-JBHeightTabBar - 10);
        make.trailing.equalTo(self.view).offset(-20);
        make.width.mas_equalTo(64);
        make.height.mas_equalTo(64);
    }];
}
#pragma mark - 代理
- (void)FSSegmentTitleView:(FSSegmentTitleView *)titleView startIndex:(NSInteger)startIndex endIndex:(NSInteger)endIndex
{
    self.JBpageContentView.contentViewCurrentIndex = endIndex;
    if (endIndex == 0) {
        self.JBHabitType = JBHabitChildTypeAll;
    }else if (endIndex == 1){
        self.JBHabitType = JBHabitChildTypeMotion;
    }else if (endIndex == 2){
        self.JBHabitType = JBHabitChildTypeReadBook;
    }else if (endIndex == 3){
        self.JBHabitType = JBHabitChildTypeMusicalInstruments;
    }else if (endIndex == 4){
        self.JBHabitType = JBHabitChildTypeOthers;
    }
}
- (void)FSContenViewDidEndDecelerating:(FSPageContentView *)contentView startIndex:(NSInteger)startIndex endIndex:(NSInteger)endIndex
{
    self.JBtitleView.selectIndex = endIndex;
    if (endIndex == 0) {
        self.JBHabitType = JBHabitChildTypeAll;
    }else if (endIndex == 1){
        self.JBHabitType = JBHabitChildTypeMotion;
    }else if (endIndex == 2){
        self.JBHabitType = JBHabitChildTypeReadBook;
    }else if (endIndex == 3){
        self.JBHabitType = JBHabitChildTypeMusicalInstruments;
    }else if (endIndex == 4){
        self.JBHabitType = JBHabitChildTypeOthers;
    }
}
#pragma mark - 属性懒加载
- (UIButton *)JBaddButton{
    if (!_JBaddButton) {
        _JBaddButton = [[UIButton alloc] init];
        [_JBaddButton setImage:[UIImage imageNamed:@"JB_add"] forState:UIControlStateNormal];
        [_JBaddButton setImage:[UIImage imageNamed:@"JB_add"] forState:UIControlStateHighlighted];
        [_JBaddButton addTarget:self action:@selector(JBaddAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _JBaddButton;
}
- (NSMutableArray *)JBtitleArray{
    if (!_JBtitleArray) {
        _JBtitleArray = [[NSMutableArray alloc] initWithArray:@[NSLocalizedString(@"全部", nil),NSLocalizedString(@"运动", nil),NSLocalizedString(@"阅读", nil),NSLocalizedString(@"乐器", nil),NSLocalizedString(@"其它", nil)]];
    }
    return _JBtitleArray;
}
- (FSSegmentTitleView *)JBtitleView{
    if (!_JBtitleView) {
        _JBtitleView = [[FSSegmentTitleView alloc] initWithFrame:CGRectMake(0, 64, CGRectGetWidth(self.view.bounds), 50) titles:self.JBtitleArray delegate:self indicatorType:0];
        
    }
    return _JBtitleView;
}
- (JBHabitChildViewController *)JBChildAllVC{
    if (!_JBChildAllVC) {
        _JBChildAllVC = [[JBHabitChildViewController alloc] init];
        _JBChildAllVC.JBHabitType = JBHabitChildTypeAll;
        _JBChildAllVC.JBsuperVC = self;
    }
    return _JBChildAllVC;
}
- (JBHabitChildViewController *)JBChildMotionVC{
    if (!_JBChildMotionVC) {
        _JBChildMotionVC = [[JBHabitChildViewController alloc] init];
        _JBChildMotionVC.JBHabitType = JBHabitChildTypeMotion;
        _JBChildMotionVC.JBsuperVC = self;
    }
    return _JBChildMotionVC;
}
- (JBHabitChildViewController *)JBChildReadBookVC{
    if (!_JBChildReadBookVC) {
        _JBChildReadBookVC = [[JBHabitChildViewController alloc] init];
        _JBChildReadBookVC.JBHabitType = JBHabitChildTypeReadBook;
        _JBChildReadBookVC.JBsuperVC = self;
    }
    return _JBChildReadBookVC;
}
- (JBHabitChildViewController *)JBChildMusicalInstrumentsVC{
    if (!_JBChildMusicalInstrumentsVC) {
        _JBChildMusicalInstrumentsVC = [[JBHabitChildViewController alloc] init];
        _JBChildMusicalInstrumentsVC.JBHabitType = JBHabitChildTypeMusicalInstruments;
        _JBChildMusicalInstrumentsVC.JBsuperVC = self;
    }
    return _JBChildMusicalInstrumentsVC;
}
- (JBHabitChildViewController *)JBChildOthersVC{
    if (!_JBChildOthersVC) {
        _JBChildOthersVC = [[JBHabitChildViewController alloc] init];
        _JBChildOthersVC.JBHabitType = JBHabitChildTypeOthers;
        _JBChildOthersVC.JBsuperVC = self;
    }
    return _JBChildOthersVC;
}
- (NSMutableArray *)JBchildVCsArray{
    if (!_JBchildVCsArray) {
        _JBchildVCsArray = [[NSMutableArray alloc] init];
        [_JBchildVCsArray addObject:self.JBChildAllVC];
        [_JBchildVCsArray addObject:self.JBChildMotionVC];
        [_JBchildVCsArray addObject:self.JBChildReadBookVC];
        [_JBchildVCsArray addObject:self.JBChildMusicalInstrumentsVC];
        [_JBchildVCsArray addObject:self.JBChildOthersVC];
    }
    return _JBchildVCsArray;
}
- (FSPageContentView *)JBpageContentView{
    if (!_JBpageContentView) {
        _JBpageContentView = [[FSPageContentView alloc] initWithFrame:CGRectMake(0, 114, CGRectGetWidth(self.view.bounds), CGRectGetHeight(self.view.bounds) - 90) childVCs:self.JBchildVCsArray parentVC:self delegate:self];
        _JBpageContentView.backgroundColor = [UIColor whiteColor];
    }
    return _JBpageContentView;
}
@end
