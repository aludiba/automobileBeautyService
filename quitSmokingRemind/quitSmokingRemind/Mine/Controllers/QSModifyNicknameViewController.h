//
//  QSModifyQSnicknameViewController.h
//  PocketBooks
//
//  Created by bykj on 2019/8/29.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "QSBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class QSModifyNicknameViewController;
typedef void(^modifynicknameBlock)(QSModifyNicknameViewController *QSnicknameVC);
@interface QSModifyNicknameViewController : QSBaseViewController
@property (nonatomic, copy)modifynicknameBlock modifynicknameB;
@property(nonatomic, copy)NSString *QSnickname;
@end

NS_ASSUME_NONNULL_END
