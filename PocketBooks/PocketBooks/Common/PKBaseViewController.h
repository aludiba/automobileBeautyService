//
//  PKBaseViewController.h
//  PocketBooks
//
//  Created by bykj on 2019/8/27.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PKBaseViewController : UIViewController
@property(nonatomic, strong)UIButton *PKbackButton;
- (void)PK_setupNavigationItems;
@end

NS_ASSUME_NONNULL_END
