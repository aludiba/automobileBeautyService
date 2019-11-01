//
//  PHModifyNicknameViewController.h
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/21.
//  Copyright © 2019 hb. All rights reserved.
//

#import "PHBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class PHModifyNicknameViewController;
typedef void(^PHmodifyNicknameBlock)(PHModifyNicknameViewController *nicknameVC);
@interface PHModifyNicknameViewController : PHBaseViewController
@property (nonatomic, copy)PHmodifyNicknameBlock PHmodifyNicknameB;
@property(nonatomic, copy)NSString *nickname;
@end

NS_ASSUME_NONNULL_END
