//
//  AFModifyAFnicknameViewController.h
//  PocketBooks
//
//  Created by bykj on 2019/8/29.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AFBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class AFModifyNicknameViewController;
typedef void(^modifynicknameBlock)(AFModifyNicknameViewController *AFnicknameVC);
@interface AFModifyNicknameViewController : AFBaseViewController
@property (nonatomic, copy)modifynicknameBlock AFmodifynicknameB;
@property(nonatomic, copy)NSString *AFnickname;
@end

NS_ASSUME_NONNULL_END
