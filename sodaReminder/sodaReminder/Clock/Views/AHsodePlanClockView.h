//
//  AHsodePlanClockView.h
//  wineAwake
//
//  Created by bykj on 2019/10/7.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class AHsodePlanClockView;
typedef void(^AHsodePlanClockSaveBlock)(AHsodePlanClockView *view);
@interface AHsodePlanClockView : UIView
@property(nonatomic, strong)UITextField *AHcontentField;
@property (nonatomic, copy)AHsodePlanClockSaveBlock AHsodePlanClockSaveB;
@end

NS_ASSUME_NONNULL_END
