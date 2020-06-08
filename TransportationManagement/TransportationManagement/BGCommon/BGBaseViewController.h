//
//  BGBaseViewController.h
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/2.
//  Copyright © 2020 hb. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BGBaseViewController : UIViewController
@property(nonatomic, strong)UIButton *BGbackButton;
- (void)BG_setupNavigationItems;
@end

NS_ASSUME_NONNULL_END
