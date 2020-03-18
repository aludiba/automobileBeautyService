//
//  EAsodePlanClockView.h
//  wineAwake
//
//  Created by bykj on 2019/10/7.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class EAsodePlanClockView;
typedef void(^EAsodePlanClockSaveBlock)(EAsodePlanClockView *view);
@interface EAsodePlanClockView : UIView
@property(nonatomic, strong)UITextField *EAcontentField;
@property (nonatomic, copy)EAsodePlanClockSaveBlock EAsodePlanClockSaveB;
@end

NS_ASSUME_NONNULL_END
