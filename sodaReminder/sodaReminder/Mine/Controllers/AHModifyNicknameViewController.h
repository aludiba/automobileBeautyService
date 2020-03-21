//
//  AHModifyAHnicknameViewController.h
//  PocketBooks
//
//  Created by bykj on 2019/8/29.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AHBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class AHModifyNicknameViewController;
typedef void(^modifynicknameBlock)(AHModifyNicknameViewController *AHnicknameVC);
@interface AHModifyNicknameViewController : AHBaseViewController
@property (nonatomic, copy)modifynicknameBlock AHmodifynicknameB;
@property(nonatomic, copy)NSString *AHnickname;
@end

NS_ASSUME_NONNULL_END
