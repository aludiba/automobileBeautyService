//
//  GAgamePlanClockView.h
//  wineAwake
//
//  Created by bykj on 2019/10/7.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class GAgamePlanClockView;
typedef void(^GAgamePlanClockSaveBlock)(GAgamePlanClockView *view);
@interface GAgamePlanClockView : UIView
@property(nonatomic, strong)UITextField *contentField;
@property (nonatomic, copy)GAgamePlanClockSaveBlock GAgamePlanClockSaveB;
@end

NS_ASSUME_NONNULL_END
