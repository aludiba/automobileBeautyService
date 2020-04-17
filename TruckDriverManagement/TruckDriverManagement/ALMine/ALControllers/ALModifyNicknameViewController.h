//
//  ALModifyNicknameViewController.h
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/7.
//  Copyright © 2020 hb. All rights reserved.
//

#import "ALBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class ALModifyNicknameViewController;
typedef void(^modifynicknameBlock)(ALModifyNicknameViewController *ALnicknameVC);

@interface ALModifyNicknameViewController : ALBaseViewController
@property (nonatomic, copy)modifynicknameBlock ALmodifynicknameB;
@property(nonatomic, copy)NSString *ALnickname;
@end

NS_ASSUME_NONNULL_END
