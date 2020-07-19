//
//  LBBaseViewController.h
//  MacroSports
//
//  Created by user on 2020/7/4.
//  Copyright © 2020 macro. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LBBaseViewController : UIViewController
@property(nonatomic, strong)UIButton *LBbackButton;
- (void)LB_setupNavigationItems;
@end

NS_ASSUME_NONNULL_END
