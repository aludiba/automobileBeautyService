//
//  PWDrinkingPlanClockView.h
//  wineAwake
//
//  Created by bykj on 2019/10/7.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class PWDrinkingPlanClockView;
typedef void(^PWDrinkingPlanClockSaveBlock)(PWDrinkingPlanClockView *view);
@interface PWDrinkingPlanClockView : UIView
@property(nonatomic, strong)UITextField *contentField;
@property (nonatomic, copy)PWDrinkingPlanClockSaveBlock PWDrinkingPlanClockSaveB;
@end

NS_ASSUME_NONNULL_END
