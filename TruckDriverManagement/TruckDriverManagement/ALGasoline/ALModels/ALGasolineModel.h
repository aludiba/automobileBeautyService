//
//  ALGasolineModel.h
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/6.
//  Copyright © 2020 hb. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ALGasolineModel : NSObject
@property(nonatomic, copy)NSString *ALobjectId;
@property(nonatomic, strong)NSDate *ALDate;
@property(nonatomic, copy)NSString *ALLicensePlateNumber;//车牌号
@property(nonatomic, copy)NSString *ALGasStationLocation;//加油站地点
@property(nonatomic, assign)NSUInteger ALCostAmount;//花费金额
@property(nonatomic, copy)NSString *ALFuelType;//加油类型
@end

NS_ASSUME_NONNULL_END
