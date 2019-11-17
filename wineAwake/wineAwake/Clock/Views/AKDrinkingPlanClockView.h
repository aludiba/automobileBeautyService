//
//  AKDrinkingPlanClockView.h
//  wineAwake
//
//  Created by bykj on 2019/10/7.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class AKDrinkingPlanClockView;
typedef void(^AKDrinkingPlanClockSaveBlock)(AKDrinkingPlanClockView *view);
@interface AKDrinkingPlanClockView : UIView
@property(nonatomic, strong)UITextField *contentField;
@property (nonatomic, copy)AKDrinkingPlanClockSaveBlock AKDrinkingPlanClockSaveB;
@end

NS_ASSUME_NONNULL_END
