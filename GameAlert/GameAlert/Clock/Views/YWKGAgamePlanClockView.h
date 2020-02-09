//
//  YWKGAgamePlanClockView.h
//  wineAwake
//
//  Created by bykj on 2019/10/7.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class YWKGAgamePlanClockView;
typedef void(^YWKGAgamePlanClockSaveBlock)(YWKGAgamePlanClockView *view);
@interface YWKGAgamePlanClockView : UIView
@property(nonatomic, strong)UITextField *contentField;
@property (nonatomic, copy)YWKGAgamePlanClockSaveBlock YWKGAgamePlanClockSaveB;
@end

NS_ASSUME_NONNULL_END
