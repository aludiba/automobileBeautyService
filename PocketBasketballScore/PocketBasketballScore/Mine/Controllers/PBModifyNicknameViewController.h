//
//  PBModifyPBnicknameViewController.h
//  PocketBooks
//
//  Created by bykj on 2019/8/29.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PBBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class PBModifyNicknameViewController;
typedef void(^modifynicknameBlock)(PBModifyNicknameViewController *PBnicknameVC);
@interface PBModifyNicknameViewController : PBBaseViewController
@property (nonatomic, copy)modifynicknameBlock modifynicknameB;
@property(nonatomic, copy)NSString *PBnickname;
@end

NS_ASSUME_NONNULL_END
