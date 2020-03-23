//
//  AJModifyAJnicknameViewController.h
//  PocketBooks
//
//  Created by bykj on 2019/8/29.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AJBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class AJModifyNicknameViewController;
typedef void(^modifynicknameBlock)(AJModifyNicknameViewController *AJnicknameVC);
@interface AJModifyNicknameViewController : AJBaseViewController
@property (nonatomic, copy)modifynicknameBlock AJmodifynicknameB;
@property(nonatomic, copy)NSString *AJnickname;
@end

NS_ASSUME_NONNULL_END
