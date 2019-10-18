//
//  SOsodePlanClockView.h
//  wineAwake
//
//  Created by bykj on 2019/10/7.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class SOsodePlanClockView;
typedef void(^SOsodePlanClockSaveBlock)(SOsodePlanClockView *view);
@interface SOsodePlanClockView : UIView
@property(nonatomic, strong)UITextField *contentField;
@property (nonatomic, copy)SOsodePlanClockSaveBlock SOsodePlanClockSaveB;
@end

NS_ASSUME_NONNULL_END
