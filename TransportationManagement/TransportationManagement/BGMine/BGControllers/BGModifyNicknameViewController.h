//
//  BGModifyNicknameViewController.h
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/7.
//  Copyright © 2020 hb. All rights reserved.
//

#import "BGBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class BGModifyNicknameViewController;
typedef void(^modifynicknameBlock)(BGModifyNicknameViewController *BGnicknameVC);

@interface BGModifyNicknameViewController : BGBaseViewController
@property (nonatomic, copy)modifynicknameBlock BGmodifynicknameB;
@property(nonatomic, copy)NSString *BGnickname;
@end

NS_ASSUME_NONNULL_END
