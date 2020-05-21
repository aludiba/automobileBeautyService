//
//  EBPurchaseStatusViewController.m
//  SupermarketOperationAssistant
//
//  Created by 褚红彪 on 2020/5/9.
//  Copyright © 2020 HBC. All rights reserved.
//

#import "EBPurchaseStatusViewController.h"
#import "EBLoginViewController.h"
#import "EBPurchaseStatusAddViewController.h"

@interface EBPurchaseStatusViewController ()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic, strong)NSMutableArray *EBDataArray;
@property(nonatomic, strong)UIView *EBBackView;
@property(nonatomic, strong)UIImageView *EBFruitsVegetablesImgView;//果蔬
@property(nonatomic, strong)UIButton *EBaddButton;
@end

@implementation EBPurchaseStatusViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"购买状态";
    [self EBsetcontentView];
}
- (void)EB_setupNavigationItems{
    [super EB_setupNavigationItems];
    UIBarButtonItem *EBaddItem = [[UIBarButtonItem alloc] initWithCustomView:self.EBaddButton];
    self.navigationItem.rightBarButtonItem = EBaddItem;
}
- (void)EBsetcontentView{
    [self.view addSubview:self.EBBackView];
    [self.EBBackView mas_makeConstraints:^(MASConstraintMaker *make) {
       make.top.equalTo(self.view).offset(EBHeightNavBar);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
        make.height.mas_equalTo(200);
    }];
    [self.EBBackView addSubview:self.EBFruitsVegetablesImgView];
    [self.EBFruitsVegetablesImgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.EBBackView).offset(12.5);
        make.centerX.equalTo(self.EBBackView);
        make.width.mas_equalTo(275);
        make.height.mas_equalTo(175);
    }];
}
#pragma mark - actions
- (void)EBaddAction:(UIButton *)EBsender{
    AVUser *EBUser = [AVUser currentUser];
    if (EBUser) {
        EBPurchaseStatusAddViewController *EBaddVC = [[EBPurchaseStatusAddViewController alloc] init];
        EBaddVC.EBsuperVC = self;
        EBaddVC.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:EBaddVC animated:YES];
    }else{
        UIAlertController *EBalertVC = [UIAlertController alertControllerWithTitle:@"提醒" message:@"请先登录" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *EBcancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *EBsureAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            EBLoginViewController *EBLoginVC = [[EBLoginViewController alloc] init];
            EBLoginVC.modalPresentationStyle = UIModalPresentationFullScreen;
            [self presentViewController:EBLoginVC animated:YES completion:^{
                
            }];
        }];
        [EBalertVC addAction:EBcancelAction];
        [EBalertVC addAction:EBsureAction];
        [self presentViewController:EBalertVC animated:YES completion:nil];
    }
}
#pragma mark - 属性懒加载
- (UIView *)EBBackView{
    if (!_EBBackView) {
        _EBBackView = [[UIView alloc] init];
    }
    return _EBBackView;
}
- (UIImageView *)EBFruitsVegetablesImgView{
    if (!_EBFruitsVegetablesImgView) {
        _EBFruitsVegetablesImgView = [[UIImageView alloc] init];
        _EBFruitsVegetablesImgView.image = [UIImage imageNamed:@"EBFruitsVegetables"];
    }
    return _EBFruitsVegetablesImgView;
}
- (NSMutableArray *)EBDataArray{
    if (!_EBDataArray) {
        _EBDataArray = [[NSMutableArray alloc] init];
    }
    return _EBDataArray;
}
- (UIButton *)EBaddButton{
    if (!_EBaddButton) {
        _EBaddButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
        [_EBaddButton setImage:[UIImage imageNamed:@"EB_add"] forState:UIControlStateNormal];
        [_EBaddButton addTarget:self action:@selector(EBaddAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _EBaddButton;
}
@end
