//
//  MPPhotoOperationViewController.m
//  magicPicsew
//
//  Created by 123 on 2020/12/30.
//

#import "MPPhotoOperationViewController.h"
#import "MPTailoringToolBarView.h"
#import "MPOtherToolBarView.h"

@interface MPPhotoOperationViewController ()<UIScrollViewDelegate,MPTailoringToolBarDelegate,MPOtherToolBarDelegate>

@property (nonatomic, strong) UIButton *MPnavRightBtn;//右侧分享按钮

@property (nonatomic, strong) UIView *MPnavTitleView;//自定义标题栏

@property (nonatomic, strong) UIButton *MPtailoringBtn;//裁剪按钮

@property (nonatomic, assign) Boolean MP_isTailoring;//是否裁剪栏

@property (nonatomic, strong) UIButton *MPtoolBtn;//工具按钮

@property (nonatomic, assign) Boolean MP_isTool;//是否工具栏

@property (nonatomic, strong) UIScrollView *MPOperationScrollView;//底部操作栏

@property (nonatomic, strong) MPTailoringToolBarView *MPTailoringView;//裁剪操作栏

@property (nonatomic, strong) MPOtherToolBarView *MPOtherToolView;//工具操作栏
@end

@implementation MPPhotoOperationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self MPsetContentView];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.MPnavTitleView.hidden = NO;
    [self MPsetContentLayOutView];
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.MPnavTitleView.hidden = YES;
}
#pragma mark - actions
- (void)MP_setupNavigationItems{
    [super MP_setupNavigationItems];
    [self MP_setTitleView];
}
- (void)MP_setTitleView{
    self.MPnavRightBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 22, 22)];
    [self.MPnavRightBtn setImage:[UIImage imageNamed:@"MP_fenxiang"] forState:UIControlStateNormal];
    [self.MPnavRightBtn addTarget:self action:@selector(MPshareAction) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *MPrightItem = [[UIBarButtonItem alloc]initWithCustomView:self.MPnavRightBtn];
    self.navigationItem.rightBarButtonItem = MPrightItem;
    
    self.MPnavTitleView = [[UIView alloc] init];
    self.MPnavTitleView.backgroundColor = [UIColor clearColor];
    [self.navigationController.navigationBar addSubview:self.MPnavTitleView];
    [self.MPnavTitleView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.navigationController.navigationBar);
        make.top.equalTo(self.navigationController.navigationBar);
        make.bottom.equalTo(self.navigationController.navigationBar);
        make.width.mas_equalTo(94);
    }];
    
    self.MPtailoringBtn = [[UIButton alloc] init];
    self.MPtailoringBtn.tag = 99;
    [self.MPtailoringBtn addTarget:self action:@selector(MPtitleOperationAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.MPtailoringBtn setTitle:@"裁剪" forState:UIControlStateNormal];
    self.MPtailoringBtn.titleLabel.textAlignment = NSTextAlignmentCenter;
    [self.MPtailoringBtn.titleLabel setFont:[UIFont boldSystemFontOfSize:18.0f]];
    [self.MPtailoringBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.MPtailoringBtn sizeToFit];
    [self.MPnavTitleView addSubview:self.MPtailoringBtn];
    [self.MPtailoringBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.MPnavTitleView);
        make.top.equalTo(self.MPnavTitleView);
        make.bottom.equalTo(self.MPnavTitleView);
        make.width.mas_equalTo(40);
    }];
    
    self.MPtoolBtn = [[UIButton alloc] init];
    self.MPtoolBtn.tag = 100;
    [self.MPtoolBtn addTarget:self action:@selector(MPtitleOperationAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.MPtoolBtn setTitle:@"工具" forState:UIControlStateNormal];
    self.MPtoolBtn.titleLabel.textAlignment = NSTextAlignmentCenter;
    [self.MPtoolBtn.titleLabel setFont:[UIFont boldSystemFontOfSize:18.0f]];
    [self.MPtoolBtn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [self.MPtoolBtn sizeToFit];
    [self.MPnavTitleView addSubview:self.MPtoolBtn];
    [self.MPtoolBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.MPnavTitleView);
        make.top.equalTo(self.MPnavTitleView);
        make.bottom.equalTo(self.MPnavTitleView);
        make.width.mas_equalTo(40);
    }];
    
    self.MP_isTailoring = YES;
    self.MP_isTool = NO;
}
- (void)MPshareAction{
    
}
- (void)MPtitleOperationAction:(UIButton *)sender{
    if (sender.tag == 99) {
        self.MP_isTailoring = YES;
        self.MP_isTool = NO;
        [self.MPtailoringBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [self.MPtoolBtn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
        [self.MPOperationScrollView setContentOffset:CGPointMake(0, 0)];
    }else{
        self.MP_isTailoring = NO;
        self.MP_isTool = YES;
        [self.MPtailoringBtn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
        [self.MPtoolBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [self.MPOperationScrollView setContentOffset:CGPointMake(MPWIDTH, 0)];
    }
}
- (void)MPsetContentView{
    [self.view addSubview:self.MPOperationScrollView];
    [self.MPOperationScrollView addSubview:self.MPTailoringView];
    [self.MPOperationScrollView addSubview:self.MPOtherToolView];
}
- (void)MPsetContentLayOutView{
    [self.MPTailoringView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.MPOperationScrollView);
        make.width.equalTo(self.MPOperationScrollView);
        make.top.equalTo(self.MPOperationScrollView);
        make.height.equalTo(self.MPOperationScrollView);
    }];
    [self.MPOtherToolView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.MPTailoringView.mas_right);
        make.top.and.bottom.equalTo(self.MPTailoringView);
        make.width.equalTo(self.MPTailoringView);
    }];
    [self.MPOperationScrollView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.and.right.equalTo(self.view);
        make.bottom.equalTo(self.view);
        make.height.mas_equalTo(60 + [MPTool MPcurrentIpBottombarheight]);
        make.right.equalTo(self.MPOtherToolView.mas_right);
    }];
}
#pragma mark - UIScrollView代理方法

#pragma mark - 属性懒加载
- (UIScrollView *)MPOperationScrollView{
    if (!_MPOperationScrollView) {
        _MPOperationScrollView = [[UIScrollView alloc] init];
        _MPOperationScrollView.delegate = self;
        _MPOperationScrollView.backgroundColor = [UIColor whiteColor];
        _MPOperationScrollView.showsHorizontalScrollIndicator = NO;
        _MPOperationScrollView.scrollEnabled = NO;
    }
    return _MPOperationScrollView;
}
- (MPTailoringToolBarView *)MPTailoringView{
    if (!_MPTailoringView) {
        _MPTailoringView = [[MPTailoringToolBarView alloc] init];
        _MPTailoringView.backgroundColor = [UIColor redColor];
    }
    return _MPTailoringView;
}
- (MPOtherToolBarView *)MPOtherToolView{
    if (!_MPOtherToolView) {
        _MPOtherToolView = [[MPOtherToolBarView alloc] init];
        _MPOtherToolView.backgroundColor = [UIColor yellowColor];
    }
    return _MPOtherToolView;
}
@end
