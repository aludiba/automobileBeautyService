//
//  QSsmokingPlanSaveModel.h
//  wineAwake
//
//  Created by bykj on 2019/10/7.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface QSsmokingPlanSaveModel : NSObject
@property(nonatomic, strong)NSDate *QSsaveDate;//保存时间
@property(nonatomic, assign)NSUInteger QSsmokeAges;//烟龄
@property(nonatomic, strong)NSDate *QStimeGiveSmokeDate;//戒烟时间
@property(nonatomic, assign)NSUInteger QSsmokingEveryDay;//每天抽几包
@property(nonatomic, assign)NSUInteger QSsmokePrices;//烟价格


@property(nonatomic, strong)NSMutableArray *QSclockInSAndNumberB;//打卡日期数组以及当天抽烟包数
//@property(nonatomic, assign)NSUInteger numberPackagesSmoke;//当天抽烟包数
@property(nonatomic, assign)NSUInteger  QScumulativeNubDays;//累计天数
@property(nonatomic, assign)NSUInteger  QSaccumulativePac;//累计少抽包数
@property(nonatomic, assign)NSUInteger  QScumulativeAmount;//累计少花钱数
@end

NS_ASSUME_NONNULL_END
