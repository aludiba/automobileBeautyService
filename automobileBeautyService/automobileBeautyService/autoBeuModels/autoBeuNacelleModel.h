//
//  auto4sEngineAirIntakeSystemModel.h
//  carMaintenanceCustomerServiceRecord
//
//  Created by bykj on 2019/6/13.
//  Copyright © 2019年 ppb. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
//发动机舱
@interface autoBeuNacelleModel : NSObject
@property(nonatomic, copy)NSString *note;//备注
@property(nonatomic, assign)Boolean isSelect;
@property(nonatomic, assign)Boolean isEngineRoomClean;//是否机舱清洗
@property(nonatomic, assign)Boolean isCabinCoating;//是否机舱镀膜
@end

NS_ASSUME_NONNULL_END
