//
//  ZLBaseViewController.h
//  Simple Diary
//
//  Created by bykj on 2019/7/20.
//  Copyright © 2019 hgg. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZLBaseViewController : UIViewController
@property(nonatomic, strong)UIButton *ZLbackButton;
- (void)ZL_setupNavigationItems;
@end

NS_ASSUME_NONNULL_END
