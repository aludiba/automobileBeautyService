//
//  PVBaseViewController.h
//  Simple Diary
//
//  Created by bykj on 2019/7/20.
//  Copyright © 2019 hgg. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PVBaseViewController : UIViewController
@property(nonatomic, strong)UIButton *PVbackButton;
- (void)PV_setupNavigationItems;
@end

NS_ASSUME_NONNULL_END
