//
//  SDWriteDiaryViewController.h
//  Simple Diary
//
//  Created by bykj on 2019/7/20.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "SDBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
typedef NS_ENUM(NSInteger, SDWriteDiaryViewControllerType) {
    SDWriteDiaryViewControllerTypeDefault,
    SDWriteDiaryViewControllerTypeEdit,
};
@class SDWriteDiaryViewController;
@class SDWriteDiaryModel;
@interface SDWriteDiaryViewController : SDBaseViewController
@property(nonatomic, assign)SDWriteDiaryViewControllerType type;
@property(nonatomic, strong)SDWriteDiaryModel *releaseModel;
@property(nonatomic, strong)UITextView *textView;
+ (SDWriteDiaryViewController *)shareInstance;
@end

NS_ASSUME_NONNULL_END
