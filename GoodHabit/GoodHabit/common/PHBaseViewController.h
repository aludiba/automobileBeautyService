//
//  PHBaseViewController.h
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/14.
//  Copyright © 2019 hb. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PHBaseViewController : UIViewController
@property(nonatomic, strong)UIButton *PHbackButton;
- (void)PH_setupNavigationItems;
@end

NS_ASSUME_NONNULL_END
