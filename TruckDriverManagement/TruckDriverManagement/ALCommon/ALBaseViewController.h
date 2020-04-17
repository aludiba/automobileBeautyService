//
//  ALBaseViewController.h
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/2.
//  Copyright © 2020 hb. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ALBaseViewController : UIViewController
@property(nonatomic, strong)UIButton *ALbackButton;
- (void)AL_setupNavigationItems;
@end

NS_ASSUME_NONNULL_END
