//
//  PWDrinkingPlanSaveModel.h
//  wineAwake
//
//  Created by bykj on 2019/10/7.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface PWDrinkingPlanSaveModel : NSObject
@property(nonatomic, strong)NSDate *saveDate;//保存时间
@property(nonatomic, assign)NSUInteger wineAges;//酒龄
@property(nonatomic, strong)NSDate *timeDrinkDate;//戒酒时间
@property(nonatomic, assign)NSUInteger drinkEveryDay;//每天酒量
@property(nonatomic, assign)NSUInteger winePrices;//酒价格
@property(nonatomic, assign)NSUInteger alcoholContent;//酒精含量

@property(nonatomic, strong)NSMutableArray *clockInDAndNumberB;//打卡日期数组以及当天饮酒数
//@property(nonatomic, assign)NSUInteger numberBottlesDrunk;//当天饮酒瓶数
@property(nonatomic, assign)NSUInteger  cumulativeNumberDays;//累计天数
@property(nonatomic, assign)NSUInteger  accumulativeBottle;//累计少喝瓶数
@property(nonatomic, assign)NSUInteger  cumulativeAmount;//累计少花钱数
@end

NS_ASSUME_NONNULL_END
