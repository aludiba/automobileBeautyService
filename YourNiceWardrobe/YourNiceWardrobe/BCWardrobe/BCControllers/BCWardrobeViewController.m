//
//  BCWardrobeViewController.m
//  YourNiceWardrobe
//
//  Created by 褚红彪 on 2020/4/25.
//  Copyright © 2020 hb. All rights reserved.
//

#import "BCWardrobeViewController.h"
#import "BCWardrobeAddViewController.h"

@interface BCWardrobeViewController ()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic, strong)NSMutableArray *BCDataArray;
@property(nonatomic, strong)UIView *BCBackView;
@property(nonatomic, strong)UIImageView *BCcoatImgView;//外套
@property(nonatomic, strong)UIButton *BCaddButton;
@property(nonatomic, strong)UITableView *BCmainTable;//列表
@end

@implementation BCWardrobeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"衣柜";
    [self BCsetcontentView];
}
- (void)BC_setupNavigationItems{
    [super BC_setupNavigationItems];
    UIBarButtonItem *BCaddItem = [[UIBarButtonItem alloc] initWithCustomView:self.BCaddButton];
    self.navigationItem.rightBarButtonItem = BCaddItem;
}
- (void)BCsetcontentView{
    self.view.backgroundColor = BCH_Color(242, 242, 242, 1);
    [self.view addSubview:self.BCBackView];
    [self.BCBackView mas_makeConstraints:^(MASConstraintMaker *make) {
       make.top.equalTo(self.view).offset(BCHeightNavBar);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
        make.height.mas_equalTo(140);
    }];
    [self.BCBackView addSubview:self.BCcoatImgView];
    [self.BCcoatImgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.BCBackView).offset(20);
        make.centerX.equalTo(self.BCBackView);
        make.width.mas_equalTo(100);
        make.height.mas_equalTo(100);
    }];
    [self.view addSubview:self.BCmainTable];
    [self.BCmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.BCBackView.mas_bottom);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
        make.bottom.equalTo(self.view);
    }];
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.BCDataArray.count;
}
#pragma mark - actions
- (void)BCaddAction:(UIButton *)sender{
//    AVUser *BCUser = [AVUser currentUser];
//    if (BCUser) {
        BCWardrobeAddViewController *BCWardrobeAddVC = [[BCWardrobeAddViewController alloc] init];
        BCWardrobeAddVC.BCsuperVC = self;
        BCWardrobeAddVC.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:BCWardrobeAddVC animated:YES];
//    }else{
//    UIAlertController *BCalertVC = [UIAlertController alertControllerWithTitle:@"提醒" message:@"请先登录" preferredStyle:UIAlertControllerStyleAlert];
//    UIAlertAction *BCcancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
//    UIAlertAction *BCsureAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
//        
//    }];
//    [BCalertVC addAction:BCcancelAction];
//    [BCalertVC addAction:BCsureAction];
//    [self presentViewController:BCalertVC animated:YES completion:nil];
//    }
}
#pragma mark - 属性懒加载
- (UIView *)BCBackView{
    if (!_BCBackView) {
        _BCBackView = [[UIView alloc] init];
        _BCBackView.backgroundColor = BCH_Color(246, 246, 246, 1);
    }
    return _BCBackView;
}
- (UIImageView *)BCcoatImgView{
    if (!_BCcoatImgView) {
        _BCcoatImgView = [[UIImageView alloc] init];
        _BCcoatImgView.image = [UIImage imageNamed:@"coat"];
    }
    return _BCcoatImgView;
}
- (UIButton *)BCaddButton{
    if (!_BCaddButton) {
        _BCaddButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
        [_BCaddButton setImage:[UIImage imageNamed:@"BC_add"] forState:UIControlStateNormal];
        [_BCaddButton addTarget:self action:@selector(BCaddAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _BCaddButton;
}
- (NSMutableArray *)BCDataArray{
    if (!_BCDataArray) {
        _BCDataArray = [[NSMutableArray alloc] init];
    }
    return _BCDataArray;
}
- (UITableView *)BCmainTable{
    if (!_BCmainTable) {
        _BCmainTable = [[UITableView alloc] init];
        _BCmainTable.rowHeight = UITableViewAutomaticDimension;
        _BCmainTable.estimatedRowHeight = 48.0f;
        _BCmainTable.dataSource = self;
        _BCmainTable.delegate = self;
        _BCmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
    }
    return _BCmainTable;
}
@end
