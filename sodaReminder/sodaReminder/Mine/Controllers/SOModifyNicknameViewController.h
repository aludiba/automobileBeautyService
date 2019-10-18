//
//  SOModifySOnicknameViewController.h
//  PocketBooks
//
//  Created by bykj on 2019/8/29.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "SOBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class SOModifyNicknameViewController;
typedef void(^modifynicknameBlock)(SOModifyNicknameViewController *SOnicknameVC);
@interface SOModifyNicknameViewController : SOBaseViewController
@property (nonatomic, copy)modifynicknameBlock modifynicknameB;
@property(nonatomic, copy)NSString *SOnickname;
@end

NS_ASSUME_NONNULL_END
