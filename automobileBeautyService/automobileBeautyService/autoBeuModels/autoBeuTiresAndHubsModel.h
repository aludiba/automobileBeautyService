//
//  auto4sEngineAirIntakeSystemModel.h
//  carMaintenanceCustomerServiceRecord
//
//  Created by bykj on 2019/6/13.
//  Copyright © 2019年 ppb. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
//轮胎跟轮毂
@interface autoBeuTiresAndHubsModel : NSObject
@property(nonatomic, copy)NSString *note;//备注
@property(nonatomic, assign)Boolean isSelect;
@property(nonatomic, assign)Boolean isTireCleaningAndCoating;//是否轮胎清洗跟镀膜
@property(nonatomic, assign)Boolean isWheelHubCleaningAndCrystalPlating;//是否轮毂的清洗和镀晶
@end

NS_ASSUME_NONNULL_END
