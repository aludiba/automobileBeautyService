//
//  PKModifyNicknameViewController.h
//  PocketBooks
//
//  Created by bykj on 2019/8/29.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PKBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class PKModifyNicknameViewController;
typedef void(^modifyNicknameBlock)(PKModifyNicknameViewController *nicknameVC);
@interface PKModifyNicknameViewController : PKBaseViewController
@property (nonatomic, copy)modifyNicknameBlock modifyNicknameB;
@property(nonatomic, copy)NSString *nickname;
@end

NS_ASSUME_NONNULL_END
