//
//  PWModifyPWnicknameViewController.h
//  PocketBooks
//
//  Created by bykj on 2019/8/29.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PWBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class PWModifyNicknameViewController;
typedef void(^modifynicknameBlock)(PWModifyNicknameViewController *PWnicknameVC);
@interface PWModifyNicknameViewController : PWBaseViewController
@property (nonatomic, copy)modifynicknameBlock modifynicknameB;
@property(nonatomic, copy)NSString *PWnickname;
@end

NS_ASSUME_NONNULL_END
