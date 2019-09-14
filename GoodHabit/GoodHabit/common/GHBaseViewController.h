//
//  GHBaseViewController.h
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/14.
//  Copyright © 2019 hb. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface GHBaseViewController : UIViewController
@property(nonatomic, strong)UIButton *GHbackButton;
- (void)GH_setupNavigationItems;
@end

NS_ASSUME_NONNULL_END
