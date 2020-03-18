//
//  EAsodePlanSaveModel.h
//  wineAwake
//
//  Created by bykj on 2019/10/7.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface EAsodePlanSaveModel : NSObject
@property(nonatomic, strong)NSDate *EAsaveDate;//保存时间
@property(nonatomic, assign)NSUInteger EAsodeAges;//苏打水龄
@property(nonatomic, strong)NSDate *EAtimeGiveSodeDate;//戒苏打水时间
@property(nonatomic, assign)NSUInteger EAsodeEveryDay;//每天喝几瓶
@property(nonatomic, assign)NSUInteger EAsodePrices;//苏打水价格


@property(nonatomic, strong)NSMutableArray *EAclockInSAndNumberB;//打卡日期数组以及当天喝苏打水瓶数
//@property(nonatomic, assign)NSUInteger numberbottleDrink;//当天喝苏打水瓶数
@property(nonatomic, assign)NSUInteger  EAcumulativeNubDays;//累计天数
@property(nonatomic, assign)NSUInteger  EAaccumulativeBot;//累计少喝瓶数
@property(nonatomic, assign)NSUInteger  EAcumulativeAmount;//累计少花钱数
@end

NS_ASSUME_NONNULL_END
