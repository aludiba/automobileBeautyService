//
//  WABaseViewController.h
//  Simple Diary
//
//  Created by bykj on 2019/7/20.
//  Copyright © 2019 hgg. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface WABaseViewController : UIViewController
@property(nonatomic, strong)UIButton *WAbackButton;
- (void)WA_setupNavigationItems;
@end

NS_ASSUME_NONNULL_END
