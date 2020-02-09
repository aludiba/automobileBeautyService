//
//  YWKGAModifyYWKGAnicknameViewController.h
//  PocketBooks
//
//  Created by bykj on 2019/8/29.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "YWKGABaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class YWKGAModifyNicknameViewController;
typedef void(^modifynicknameBlock)(YWKGAModifyNicknameViewController *YWKGAnicknameVC);
@interface YWKGAModifyNicknameViewController : YWKGABaseViewController
@property (nonatomic, copy)modifynicknameBlock modifynicknameB;
@property(nonatomic, copy)NSString *YWKGAnickname;
@end

NS_ASSUME_NONNULL_END
