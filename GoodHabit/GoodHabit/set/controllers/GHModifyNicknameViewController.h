//
//  GHModifyNicknameViewController.h
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/21.
//  Copyright © 2019 hb. All rights reserved.
//

#import "GHBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class GHModifyNicknameViewController;
typedef void(^modifyNicknameBlock)(GHModifyNicknameViewController *nicknameVC);
@interface GHModifyNicknameViewController : GHBaseViewController
@property (nonatomic, copy)modifyNicknameBlock modifyNicknameB;
@property(nonatomic, copy)NSString *nickname;
@end

NS_ASSUME_NONNULL_END
