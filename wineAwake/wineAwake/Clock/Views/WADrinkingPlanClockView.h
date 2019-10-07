//
//  WADrinkingPlanClockView.h
//  wineAwake
//
//  Created by bykj on 2019/10/7.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class WADrinkingPlanClockView;
typedef void(^WADrinkingPlanClockSaveBlock)(WADrinkingPlanClockView *view);
@interface WADrinkingPlanClockView : UIView
@property(nonatomic, strong)UITextField *contentField;
@property (nonatomic, copy)WADrinkingPlanClockSaveBlock WADrinkingPlanClockSaveB;
@end

NS_ASSUME_NONNULL_END
