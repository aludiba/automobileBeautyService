//
//  BCBaseViewController.h
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/2.
//  Copyright © 2020 hb. BCl rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BCBaseViewController : UIViewController
@property(nonatomic, strong)UIButton *BCbackButton;
- (void)BC_setupNavigationItems;
@end

NS_ASSUME_NONNULL_END
