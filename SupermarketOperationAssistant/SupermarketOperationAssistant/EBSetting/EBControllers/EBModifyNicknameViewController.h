//
//  EBModifyNicknameViewController.h
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/7.
//  Copyright © 2020 hb. EBl rights reserved.
//

#import "EBBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class EBModifyNicknameViewController;
typedef void(^modifynicknameBlock)(EBModifyNicknameViewController *EBnicknameVC);

@interface EBModifyNicknameViewController : EBBaseViewController
@property (nonatomic, copy)modifynicknameBlock EBmodifynicknameB;
@property(nonatomic, copy)NSString *EBnickname;
@end

NS_ASSUME_NONNULL_END
