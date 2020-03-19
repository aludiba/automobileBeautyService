//
//  AFgamePlanClockView.h
//  wineAwake
//
//  Created by bykj on 2019/10/7.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class AFgamePlanClockView;
typedef void(^AFgamePlanClockSaveBlock)(AFgamePlanClockView *view);
@interface AFgamePlanClockView : UIView
@property(nonatomic, strong)UITextField *AFcontentField;
@property (nonatomic, copy)AFgamePlanClockSaveBlock AFgamePlanClockSaveB;
@end

NS_ASSUME_NONNULL_END
