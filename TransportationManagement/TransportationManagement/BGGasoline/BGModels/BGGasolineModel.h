//
//  BGGasolineModel.h
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/6.
//  Copyright © 2020 hb. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BGGasolineModel : NSObject
@property(nonatomic, copy)NSString *BGobjectId;
@property(nonatomic, strong)NSDate *BGDate;
@property(nonatomic, copy)NSString *BGLicensePlateNumber;//车牌号
@property(nonatomic, copy)NSString *BGGasStationLocation;//加油站地点
@property(nonatomic, assign)NSUInteger BGCostAmount;//花费金额
@property(nonatomic, copy)NSString *BGFuelType;//加油类型
@end

NS_ASSUME_NONNULL_END
