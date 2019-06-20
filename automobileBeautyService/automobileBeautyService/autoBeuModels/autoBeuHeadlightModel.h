//
//  auto4sDoorHingeModel.h
//  carMaintenanceCustomerServiceRecord
//
//  Created by bykj on 2019/6/13.
//  Copyright © 2019年 ppb. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
//大灯
@interface autoBeuHeadlightModel : NSObject
@property(nonatomic, copy)NSString *note;//备注
@property(nonatomic, assign)Boolean isSelect;
@property(nonatomic, assign)Boolean isOxidation;//是否氧化
@property(nonatomic, assign)Boolean isRenovation;//是否翻新
@end

NS_ASSUME_NONNULL_END
