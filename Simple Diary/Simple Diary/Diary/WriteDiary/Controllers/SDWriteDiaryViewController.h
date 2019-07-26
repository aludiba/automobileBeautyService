//
//  SDWriteDiaryViewController.h
//  Simple Diary
//
//  Created by bykj on 2019/7/20.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "SDBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class SDWriteDiaryViewController;
@interface SDWriteDiaryViewController : SDBaseViewController
@property(nonatomic, strong)UITextView *textView;
+ (SDWriteDiaryViewController *)shareInstance;
@end

NS_ASSUME_NONNULL_END
