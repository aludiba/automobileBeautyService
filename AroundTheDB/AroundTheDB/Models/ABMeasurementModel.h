//
//  ABMeasurementModel.h
//  AroundTheDB
//
//  Created by bykj on 2019/8/14.
//  Copyright © 2019 hgg. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ABMeasurementModel : NSObject
@property(nonatomic, copy)NSString *title;
@property(nonatomic, copy)NSString *position;
@property(nonatomic, strong)NSDate *date;
@property(nonatomic, strong)NSNumber *maxDB;
@property(nonatomic, strong)NSNumber *averageDB;
@property(nonatomic, strong)NSNumber *durationTime;
@end

NS_ASSUME_NONNULL_END
