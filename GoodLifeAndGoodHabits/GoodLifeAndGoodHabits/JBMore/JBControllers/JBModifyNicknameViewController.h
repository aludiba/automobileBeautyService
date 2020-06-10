//
//  JBModifyNicknameViewController.h
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/7.
//  Copyright © 2020 hb. All rights reserved.
//

#import "JBBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class JBModifyNicknameViewController;
typedef void(^modifynicknameBlock)(JBModifyNicknameViewController *JBnicknameVC);

@interface JBModifyNicknameViewController : JBBaseViewController
@property (nonatomic, copy)modifynicknameBlock JBmodifynicknameB;
@property(nonatomic, copy)NSString *JBnickname;
@end

NS_ASSUME_NONNULL_END
