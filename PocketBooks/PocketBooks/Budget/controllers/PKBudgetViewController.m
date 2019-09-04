//
//  PKBudgetViewController.m
//  PocketBooks
//
//  Created by bykj on 2019/8/28.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PKBudgetViewController.h"
#import "PKAddBudgetViewController.h"
@interface PKBudgetViewController ()
@property(nonatomic, strong)UIButton *addButton;
@end

@implementation PKBudgetViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = PKH_Color(244, 245, 246, 1);
    self.title = NSLocalizedString(@"预算", nil);
}
- (void)PK_setupNavigationItems{
    [super PK_setupNavigationItems];
    [self setNavigationBarItems];
}
- (void)setNavigationBarItems{
    UIBarButtonItem *addButtonItem = [[UIBarButtonItem alloc] initWithCustomView:self.addButton];
    self.navigationItem.rightBarButtonItem = addButtonItem;
}
- (void)addBtnClick:(UIButton *)sender{
    NSLog(@"添加新预算~~~~~~");
    PKAddBudgetViewController *vc = [[PKAddBudgetViewController alloc] init];
    vc.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:vc animated:YES];
}
#pragma mark - 属性懒加载
- (UIButton *)addButton{
    if (!_addButton) {
        _addButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_addButton setImage:[UIImage imageNamed:@"PK_btn_add"] forState:UIControlStateNormal];
        [_addButton setImage:[UIImage imageNamed:@"PK_btn_add"] forState:UIControlStateSelected];
        [_addButton addTarget:self action:@selector(addBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _addButton;
}
@end
