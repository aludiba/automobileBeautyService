//
//  GAModifyGAnicknameViewController.h
//  PocketBooks
//
//  Created by bykj on 2019/8/29.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "GABaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class GAModifyNicknameViewController;
typedef void(^modifynicknameBlock)(GAModifyNicknameViewController *GAnicknameVC);
@interface GAModifyNicknameViewController : GABaseViewController
@property (nonatomic, copy)modifynicknameBlock modifynicknameB;
@property(nonatomic, copy)NSString *GAnickname;
@end

NS_ASSUME_NONNULL_END
