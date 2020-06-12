//
//  JBHabitModel.h
//  GoodLifeAndGoodHabits
//
//  Created by user on 2020/6/12.
//  Copyright © 2020 user. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface JBHabitModel : NSObject
@property(nonatomic, assign)JBHabitChildType JBType;
@property(nonatomic, copy)NSString *JBPlanTime;
@property(nonatomic, copy)NSString *JBComment;
@end

NS_ASSUME_NONNULL_END
