//
//  EBBaseViewController.h
//  超市运营助手
//
//  Created by 褚红彪 on 2020/5/9.
//  Copyright © 2020 hb. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface EBBaseViewController : UIViewController
@property(nonatomic, strong)UIButton *EBbackButton;
- (void)EB_setupNavigationItems;
@end

NS_ASSUME_NONNULL_END
