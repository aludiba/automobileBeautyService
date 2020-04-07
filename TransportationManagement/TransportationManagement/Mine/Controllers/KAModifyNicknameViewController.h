//
//  KAModifyNicknameViewController.h
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/7.
//  Copyright © 2020 hb. All rights reserved.
//

#import "KABaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class KAModifyNicknameViewController;
typedef void(^modifynicknameBlock)(KAModifyNicknameViewController *KAnicknameVC);

@interface KAModifyNicknameViewController : KABaseViewController
@property (nonatomic, copy)modifynicknameBlock KAmodifynicknameB;
@property(nonatomic, copy)NSString *KAnickname;
@end

NS_ASSUME_NONNULL_END
