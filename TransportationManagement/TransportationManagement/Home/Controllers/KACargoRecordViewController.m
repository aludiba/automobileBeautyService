//
//  KACargoRecordViewController.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/2.
//  Copyright © 2020 hb. All rights reserved.
//

#import "KACargoRecordViewController.h"
#import "KACargoAddViewController.h"
#import "KACargoModel.h"
@interface KACargoRecordViewController ()
@property(nonatomic, strong)UIButton *KAaddButton;
@end

@implementation KACargoRecordViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    if (self.type == KACargoTypeWaitReceiving) {
        self.title = @"待接货";
    }else if (self.type == KACargoTypeWaitLoading){
        self.title = @"待装载";
    }else if (self.type == KACargoTypeWaitDelivery){
        self.title = @"待送达";
    }else{
        self.title = @"已完成";
    }
}
#pragma mark - actions
- (void)KA_setupNavigationItems{
    [super KA_setupNavigationItems];
    UIBarButtonItem *addItem = [[UIBarButtonItem alloc] initWithCustomView:self.KAaddButton];
    self.navigationItem.rightBarButtonItem = addItem;
}
- (void)KAaddAction:(UIButton *)sender{
    KACargoAddViewController *KAaddVC = [[KACargoAddViewController alloc] init];
    KAaddVC.type = self.type;
    [self.navigationController pushViewController:KAaddVC animated:YES];
}
#pragma mark - 属性懒加载
- (UIButton *)KAaddButton{
    if (!_KAaddButton) {
        _KAaddButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
        [_KAaddButton setImage:[UIImage imageNamed:@"KA_add"] forState:UIControlStateNormal];
        [_KAaddButton addTarget:self action:@selector(KAaddAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _KAaddButton;
}
@end
