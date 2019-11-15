//
//  GFModifyGFnicknameViewController.h
//  PocketBooks
//
//  Created by bykj on 2019/8/29.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "GFBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class GFModifyNicknameViewController;
typedef void(^modifynicknameBlock)(GFModifyNicknameViewController *GFnicknameVC);
@interface GFModifyNicknameViewController : GFBaseViewController
@property (nonatomic, copy)modifynicknameBlock modifynicknameB;
@property(nonatomic, copy)NSString *GFnickname;
@end

NS_ASSUME_NONNULL_END
