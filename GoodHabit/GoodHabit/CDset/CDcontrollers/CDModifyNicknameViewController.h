//
//  CDModifyNicknameViewController.h
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/21.
//  Copyright © 2019 hb. All rights reserved.
//

#import "CDBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class CDModifyNicknameViewController;
typedef void(^CDmodifyNicknameBlock)(CDModifyNicknameViewController *nicknameVC);
@interface CDModifyNicknameViewController : CDBaseViewController
@property (nonatomic, copy)CDmodifyNicknameBlock CDmodifyNicknameB;
@property(nonatomic, copy)NSString *nickname;
@end

NS_ASSUME_NONNULL_END
