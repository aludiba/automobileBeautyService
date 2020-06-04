//
//  FBBaseViewController.h
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/2.
//  Copyright © 2020 hb. FBl rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface FBBaseViewController : UIViewController
@property(nonatomic, strong)UIButton *FBbackButton;
- (void)FB_setupNavigationItems;
@end

NS_ASSUME_NONNULL_END
