//
//  YBModifyYBnicknameViewController.h
//  PocketBooks
//
//  Created by bykj on 2019/8/29.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "YBBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class YBModifyNicknameViewController;
typedef void(^modifynicknameBlock)(YBModifyNicknameViewController *YBnicknameVC);
@interface YBModifyNicknameViewController : YBBaseViewController
@property (nonatomic, copy)modifynicknameBlock modifynicknameB;
@property(nonatomic, copy)NSString *YBnickname;
@end

NS_ASSUME_NONNULL_END
