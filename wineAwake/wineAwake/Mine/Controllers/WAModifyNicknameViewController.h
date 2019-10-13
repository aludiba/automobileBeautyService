//
//  WAModifyWAnicknameViewController.h
//  PocketBooks
//
//  Created by bykj on 2019/8/29.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "WABaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class WAModifyNicknameViewController;
typedef void(^modifynicknameBlock)(WAModifyNicknameViewController *WAnicknameVC);
@interface WAModifyNicknameViewController : WABaseViewController
@property (nonatomic, copy)modifynicknameBlock modifynicknameB;
@property(nonatomic, copy)NSString *WAnickname;
@end

NS_ASSUME_NONNULL_END
