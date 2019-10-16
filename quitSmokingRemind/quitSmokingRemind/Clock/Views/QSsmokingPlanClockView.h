//
//  QSsmokingPlanClockView.h
//  wineAwake
//
//  Created by bykj on 2019/10/7.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class QSsmokingPlanClockView;
typedef void(^QSsmokingPlanClockSaveBlock)(QSsmokingPlanClockView *view);
@interface QSsmokingPlanClockView : UIView
@property(nonatomic, strong)UITextField *contentField;
@property (nonatomic, copy)QSsmokingPlanClockSaveBlock QSsmokingPlanClockSaveB;
@end

NS_ASSUME_NONNULL_END
