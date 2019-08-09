//
//  SDPasswordChangeViewController.h
//  Simple Diary
//
//  Created by bykj on 2019/8/8.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "SDBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
typedef NS_ENUM(NSInteger, SDPasswordChangeViewControllerType) {
    SDPasswordChangeViewControllerTypeDefault = 0,
    SDPasswordChangeViewControllerTypeFromLogin = 1,
};
@interface SDPasswordChangeViewController : SDBaseViewController
@property(nonatomic, copy)NSString *userName;
@property(nonatomic, assign)SDPasswordChangeViewControllerType type;
@end

NS_ASSUME_NONNULL_END
