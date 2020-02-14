//
//  PVYWKModifyPVYWKnicknameViewController.h
//  PocketBooks
//
//  Created by bykj on 2019/8/29.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PVYWKBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class PVYWKModifyNicknameViewController;
typedef void(^modifynicknameBlock)(PVYWKModifyNicknameViewController *PVYWKnicknameVC);
@interface PVYWKModifyNicknameViewController : PVYWKBaseViewController
@property (nonatomic, copy)modifynicknameBlock modifynicknameB;
@property(nonatomic, copy)NSString *PVYWKnickname;
@end

NS_ASSUME_NONNULL_END
