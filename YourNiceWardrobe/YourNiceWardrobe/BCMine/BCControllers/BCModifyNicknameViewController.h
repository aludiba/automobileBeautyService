//
//  BCModifyNicknameViewController.h
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/7.
//  Copyright © 2020 hb. BCl rights reserved.
//

#import "BCBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class BCModifyNicknameViewController;
typedef void(^modifynicknameBlock)(BCModifyNicknameViewController *BCnicknameVC);

@interface BCModifyNicknameViewController : BCBaseViewController
@property (nonatomic, copy)modifynicknameBlock BCmodifynicknameB;
@property(nonatomic, copy)NSString *BCnickname;
@end

NS_ASSUME_NONNULL_END
