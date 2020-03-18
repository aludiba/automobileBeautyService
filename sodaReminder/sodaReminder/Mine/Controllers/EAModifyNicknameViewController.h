//
//  EAModifyEAnicknameViewController.h
//  PocketBooks
//
//  Created by bykj on 2019/8/29.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "EABaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class EAModifyNicknameViewController;
typedef void(^modifynicknameBlock)(EAModifyNicknameViewController *EAnicknameVC);
@interface EAModifyNicknameViewController : EABaseViewController
@property (nonatomic, copy)modifynicknameBlock modifynicknameB;
@property(nonatomic, copy)NSString *EAnickname;
@end

NS_ASSUME_NONNULL_END
