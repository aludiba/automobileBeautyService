//
//  FBModifyNicknameViewController.h
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/7.
//  Copyright © 2020 hb. FBl rights reserved.
//

#import "FBBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class FBModifyNicknameViewController;
typedef void(^modifynicknameBlock)(FBModifyNicknameViewController *FBnicknameVC);

@interface FBModifyNicknameViewController : FBBaseViewController
@property (nonatomic, copy)modifynicknameBlock FBmodifynicknameB;
@property(nonatomic, copy)NSString *FBnickname;
@end

NS_ASSUME_NONNULL_END
