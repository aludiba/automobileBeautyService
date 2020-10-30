//
//  MPMainViewController.m
//  magicPicsew
//
//  Created by 123 on 2020/10/30.
//

#import "MPMainViewController.h"
#import "MPSetViewController.h"

@interface MPMainViewController ()<UICollectionViewDataSource,UICollectionViewDelegate,UITableViewDataSource,UITableViewDelegate>

@property (nonatomic, strong) UIButton *MPnavRightBtn;//右侧设置按钮
@property (nonatomic, strong) UIView *MPnavTitleView;//自定义标题栏
@property (nonatomic, strong) UIButton *MPnavTitleBtn;//自定义标题按钮
@property (nonatomic, strong) UILabel *MPnavTitleLbl;//自定义标题
@property (nonatomic, strong) UIImageView *MPnavExpandCloseImgView;//展开和关闭图标
@property (nonatomic, assign) Boolean isExpand;//是否展开最近项目

@property (nonatomic, strong) UICollectionView *MPmainPicCollectionView;//主要相册展示控件
@property (nonatomic, strong) UITableView *MPpicSelectTableView;//相册类型选择控件
@end

@implementation MPMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.MPnavTitleView.hidden = NO;
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.MPnavTitleView.hidden = YES;
}
- (void)MP_setupNavigationItems{
    [super MP_setupNavigationItems];
    [self _MP_setTitleView];
}
- (void)_MP_setTitleView{
    self.MPnavRightBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 22, 22)];
    [self.MPnavRightBtn setImage:[UIImage imageNamed:@"MP_shezhi"] forState:UIControlStateNormal];
    [self.MPnavRightBtn addTarget:self action:@selector(_MP_setAction) forControlEvents:UIControlEventTouchUpInside];
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
    self.MPnavTitleBtn = [[UIButton alloc] init];
    [self.MPnavTitleBtn addTarget:self action:@selector(_MP_recentProjectsAction) forControlEvents:UIControlEventTouchUpInside];
    [self.MPnavTitleView addSubview:self.MPnavTitleBtn];
    [self.MPnavTitleBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.MPnavTitleView).offset(10);
        make.top.equalTo(self.MPnavTitleView);
        make.bottom.equalTo(self.MPnavTitleView);
        make.width.mas_equalTo(94);
    }];
    self.MPnavTitleLbl = [[UILabel alloc] init];
    [self.MPnavTitleLbl setFont:[UIFont boldSystemFontOfSize:18.0f]];
    [self.MPnavTitleLbl setTextColor:[UIColor blackColor]];
    [self.MPnavTitleLbl setText:@"最近项目"];
    [self.MPnavTitleLbl sizeToFit];
    [self.MPnavTitleBtn addSubview:self.MPnavTitleLbl];
    [self.MPnavTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.MPnavTitleBtn);
        make.top.equalTo(self.MPnavTitleBtn);
        make.bottom.equalTo(self.MPnavTitleBtn);
        make.width.mas_equalTo(74);
    }];
    self.MPnavExpandCloseImgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MP_xiangxia"]];
    [self.MPnavTitleBtn addSubview:self.MPnavExpandCloseImgView];
    [self.MPnavExpandCloseImgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.MPnavTitleLbl.mas_right);
        make.centerY.equalTo(self.MPnavTitleLbl);
        make.width.mas_equalTo(20);
        make.height.mas_equalTo(20);
    }];
}
#pragma mark - actions
//最近项目
- (void)_MP_recentProjectsAction{
    self.isExpand = !self.isExpand;
    if (self.isExpand) {
        self.MPnavExpandCloseImgView.image = [UIImage imageNamed:@"MP_xiangshang"];
    }else{
        self.MPnavExpandCloseImgView.image = [UIImage imageNamed:@"MP_xiangxia"];
    }
}
//设置导航栏
- (void)_MP_setAction{
    MPSetViewController *MPSetVC = [[MPSetViewController alloc] init];
    [self.navigationController pushViewController:MPSetVC animated:YES];
}
#pragma mark - 属性懒加载

@end
