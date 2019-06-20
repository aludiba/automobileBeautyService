//
//  auto4sBrakeModel.h
//  carMaintenanceCustomerServiceRecord
//
//  Created by bykj on 2019/6/13.
//  Copyright © 2019年 ppb. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
//内饰项目
@interface autoBeuInteriorModel : NSObject
@property(nonatomic, copy)NSString *note;//备注
@property(nonatomic, assign)Boolean isSelect;
@property(nonatomic, assign)Boolean isCleaning;//是否清洗
@property(nonatomic, assign)Boolean isLeatherCare;//是否真皮护理
@property(nonatomic, assign)Boolean isDoorPlankCoating;//是否门板镀膜
@property(nonatomic, assign)Boolean isSprayDisinfection;//是否雾化消毒
@property(nonatomic, assign)Boolean isFabricCoating;//是否织物镀膜
@end

NS_ASSUME_NONNULL_END
