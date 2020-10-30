//
//  MPBaseViewController.h
//  magicPicsew
//
//  Created by 123 on 2020/10/30.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MPBaseViewController : UIViewController
@property(nonatomic, strong)UIButton *MPbackButton;
- (void)MP_setupNavigationItems;
@end

NS_ASSUME_NONNULL_END
