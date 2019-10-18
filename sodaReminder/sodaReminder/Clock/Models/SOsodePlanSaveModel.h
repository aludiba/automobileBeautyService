//
//  SOsodePlanSaveModel.h
//  wineAwake
//
//  Created by bykj on 2019/10/7.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SOsodePlanSaveModel : NSObject
@property(nonatomic, strong)NSDate *SOsaveDate;//保存时间
@property(nonatomic, assign)NSUInteger SOsodeAges;//苏打水龄
@property(nonatomic, strong)NSDate *SOtimeGiveSodeDate;//戒苏打水时间
@property(nonatomic, assign)NSUInteger SOsodeEveryDay;//每天喝几瓶
@property(nonatomic, assign)NSUInteger SOsodePrices;//苏打水价格


@property(nonatomic, strong)NSMutableArray *SOclockInSAndNumberB;//打卡日期数组以及当天喝苏打水瓶数
//@property(nonatomic, assign)NSUInteger numberbottleDrink;//当天喝苏打水瓶数
@property(nonatomic, assign)NSUInteger  SOcumulativeNubDays;//累计天数
@property(nonatomic, assign)NSUInteger  SOaccumulativeBot;//累计少喝瓶数
@property(nonatomic, assign)NSUInteger  SOcumulativeAmount;//累计少花钱数
@end

NS_ASSUME_NONNULL_END
