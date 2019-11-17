//
//  AKModifyAKnicknameViewController.h
//  PocketBooks
//
//  Created by bykj on 2019/8/29.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AKBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class AKModifyNicknameViewController;
typedef void(^modifynicknameBlock)(AKModifyNicknameViewController *AKnicknameVC);
@interface AKModifyNicknameViewController : AKBaseViewController
@property (nonatomic, copy)modifynicknameBlock modifynicknameB;
@property(nonatomic, copy)NSString *AKnickname;
@end

NS_ASSUME_NONNULL_END
