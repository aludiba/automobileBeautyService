//
//  AJgamePlanClockView.h
//  wineAwake
//
//  Created by bykj on 2019/10/7.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class AJgamePlanClockView;
typedef void(^AJgamePlanClockSaveBlock)(AJgamePlanClockView *view);
@interface AJgamePlanClockView : UIView
@property(nonatomic, strong)UITextField *AJcontentField;
@property (nonatomic, copy)AJgamePlanClockSaveBlock AJgamePlanClockSaveB;
@end

NS_ASSUME_NONNULL_END
