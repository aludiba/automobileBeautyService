//
//  WAModifyNicknameViewController.h
//  PocketBooks
//
//  Created by bykj on 2019/8/29.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "WABaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class WAModifyNicknameViewController;
typedef void(^modifyNicknameBlock)(WAModifyNicknameViewController *nicknameVC);
@interface WAModifyNicknameViewController : WABaseViewController
@property (nonatomic, copy)modifyNicknameBlock modifyNicknameB;
@property(nonatomic, copy)NSString *nickname;
@end

NS_ASSUME_NONNULL_END
