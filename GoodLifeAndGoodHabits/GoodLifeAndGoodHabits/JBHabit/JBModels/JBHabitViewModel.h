//
//  JBHabitViewModel.h
//  GoodLifeAndGoodHabits
//
//  Created by user on 2020/6/12.
//  Copyright © 2020 user. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
typedef NS_ENUM(NSInteger, JBHabitViewType) {
    JBHabitViewTypeSelect,
    JBHabitViewTypeEditNum,
    JBHabitViewTypeEditString,
};
@interface JBHabitViewModel : NSObject
@property(nonatomic, assign)JBHabitChildType JBHabitType;
@property(nonatomic, assign)JBHabitViewType JBhabitviewtype;
@property(nonatomic, copy)NSString *JBTitle;
@property(nonatomic, copy)NSString *JBContent;
@property(nonatomic, copy)NSString *JBDefault;
@property(nonatomic, assign)CGFloat JBEditHeight;
@property(nonatomic, assign)Boolean isLine;
@end

NS_ASSUME_NONNULL_END
