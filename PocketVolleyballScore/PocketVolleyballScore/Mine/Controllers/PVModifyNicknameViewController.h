//
//  PVModifyPVnicknameViewController.h
//  PocketBooks
//
//  Created by bykj on 2019/8/29.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PVBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class PVModifyNicknameViewController;
typedef void(^modifynicknameBlock)(PVModifyNicknameViewController *PVnicknameVC);
@interface PVModifyNicknameViewController : PVBaseViewController
@property (nonatomic, copy)modifynicknameBlock modifynicknameB;
@property(nonatomic, copy)NSString *PVnickname;
@end

NS_ASSUME_NONNULL_END
