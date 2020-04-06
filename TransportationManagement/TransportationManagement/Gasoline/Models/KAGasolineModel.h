//
//  KAGasolineModel.h
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/6.
//  Copyright © 2020 hb. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface KAGasolineModel : NSObject
@property(nonatomic, copy)NSString *KAobjectId;
@property(nonatomic, strong)NSDate *KADate;
@property(nonatomic, copy)NSString *KALicensePlateNumber;//车牌号
@property(nonatomic, copy)NSString *KAGasStationLocation;//加油站地点
@property(nonatomic, assign)NSUInteger KACostAmount;//花费金额
@property(nonatomic, copy)NSString *KAFuelType;//加油类型
@end

NS_ASSUME_NONNULL_END
