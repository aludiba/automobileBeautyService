//
//  JBBaseViewController.h
//  GoodLifeAndGoodHabits
//
//  Created by user on 2020/6/9.
//  Copyright © 2020 user. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface JBBaseViewController : UIViewController
@property(nonatomic, strong)UIButton *JBbackButton;
- (void)JB_setupNavigationItems;
@end

NS_ASSUME_NONNULL_END
