//
//  JBHabitViewController.m
//  GoodLifeAndGoodHabits
//
//  Created by user on 2020/6/9.
//  Copyright © 2020 user. All rights reserved.
//

#import "JBHabitViewController.h"
#import "FSScrollContentView.h"
#import "FSSegmentTitleView.h"
#import "JBHabitChildViewController.h"
@interface JBHabitViewController ()<FSPageContentViewDelegate,FSSegmentTitleViewDelegate>
@property(nonatomic, strong)NSMutableArray *JBtitleArray;
@property(nonatomic, strong)NSMutableArray *JBchildVCsArray;
@property (nonatomic, strong) FSSegmentTitleView *JBtitleView;
@property (nonatomic, strong) FSPageContentView *JBpageContentView;
@end

@implementation JBHabitViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = NSLocalizedString(@"习惯", nil);
    [self JBsetContentView];
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
}
#pragma mark - 代理
- (void)FSSegmentTitleView:(FSSegmentTitleView *)titleView startIndex:(NSInteger)startIndex endIndex:(NSInteger)endIndex
{
    self.JBpageContentView.contentViewCurrentIndex = endIndex;
}
- (void)FSContenViewDidEndDecelerating:(FSPageContentView *)contentView startIndex:(NSInteger)startIndex endIndex:(NSInteger)endIndex
{
    self.JBtitleView.selectIndex = endIndex;
}
#pragma mark - 属性懒加载
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
        _JBChildAllVC.JBType = JBHabitChildTypeAll;
    }
    return _JBChildAllVC;
}
- (JBHabitChildViewController *)JBChildMotionVC{
    if (!_JBChildMotionVC) {
        _JBChildMotionVC = [[JBHabitChildViewController alloc] init];
        _JBChildMotionVC.JBType = JBHabitChildTypeMotion;
    }
    return _JBChildMotionVC;
}
- (JBHabitChildViewController *)JBChildReadBookVC{
    if (!_JBChildReadBookVC) {
        _JBChildReadBookVC = [[JBHabitChildViewController alloc] init];
        _JBChildReadBookVC.JBType = JBHabitChildTypeReadBook;
    }
    return _JBChildReadBookVC;
}
- (JBHabitChildViewController *)JBChildMusicalInstrumentsVC{
    if (!_JBChildMusicalInstrumentsVC) {
        _JBChildMusicalInstrumentsVC = [[JBHabitChildViewController alloc] init];
        _JBChildMusicalInstrumentsVC.JBType = JBHabitChildTypeMusicalInstruments;
    }
    return _JBChildMusicalInstrumentsVC;
}
- (JBHabitChildViewController *)JBChildOthersVC{
    if (!_JBChildOthersVC) {
        _JBChildOthersVC = [[JBHabitChildViewController alloc] init];
        _JBChildOthersVC.JBType = JBHabitChildTypeOthers;
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
