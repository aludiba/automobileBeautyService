//
//  PFModifyPFnicknameViewController.h
//  PocketBooks
//
//  Created by bykj on 2019/8/29.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PFBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class PFModifyNicknameViewController;
typedef void(^modifynicknameBlock)(PFModifyNicknameViewController *PFnicknameVC);
@interface PFModifyNicknameViewController : PFBaseViewController
@property (nonatomic, copy)modifynicknameBlock modifynicknameB;
@property(nonatomic, copy)NSString *PFnickname;
@end

NS_ASSUME_NONNULL_END
