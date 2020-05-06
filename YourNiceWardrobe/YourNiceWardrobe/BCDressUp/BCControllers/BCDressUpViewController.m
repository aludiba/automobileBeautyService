//
//  BCDressUpViewController.m
//  YourNiceWardrobe
//
//  Created by 褚红彪 on 2020/4/25.
//  Copyright © 2020 hb. All rights reserved.
//

#import "BCDressUpViewController.h"
#import "BCLoginViewController.h"
#import "BCDressUpAddViewController.h"
#import "BCDressUpTableViewCell.h"
#import "BCDressUpModel.h"
@interface BCDressUpViewController ()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic, strong)NSMutableArray *BCDataArray;
@property(nonatomic, strong)UIButton *BCaddButton;
@end

@implementation BCDressUpViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"打扮";
}
- (void)BC_setupNavigationItems{
    [super BC_setupNavigationItems];
    UIBarButtonItem *BCaddItem = [[UIBarButtonItem alloc] initWithCustomView:self.BCaddButton];
    self.navigationItem.rightBarButtonItem = BCaddItem;
}
- (void)BCaddAction:(UIButton *)BCsender{
    AVUser *BCUser = [AVUser currentUser];
    if (BCUser) {
        BCDressUpAddViewController *BCaddVC = [[BCDressUpAddViewController alloc] init];
        BCaddVC.BCsuperVC = self;
        BCaddVC.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:BCaddVC animated:YES];
    }else{
        UIAlertController *BCalertVC = [UIAlertController alertControllerWithTitle:@"提醒" message:@"请先登录" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *BCcancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *BCsureAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            BCLoginViewController *BCLoginVC = [[BCLoginViewController alloc] init];
            BCLoginVC.modalPresentationStyle = UIModalPresentationFullScreen;
            [self presentViewController:BCLoginVC animated:YES completion:^{
                
            }];
        }];
        [BCalertVC addAction:BCcancelAction];
        [BCalertVC addAction:BCsureAction];
        [self presentViewController:BCalertVC animated:YES completion:nil];
    }
}
#pragma mark - 属性懒加载
- (UIButton *)BCaddButton{
    if (!_BCaddButton) {
        _BCaddButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
        [_BCaddButton setImage:[UIImage imageNamed:@"BC_add"] forState:UIControlStateNormal];
        [_BCaddButton addTarget:self action:@selector(BCaddAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _BCaddButton;
}
@end
