//
//  auto4SengineoilModel.h
//  carMaintenanceCustomerServiceRecord
//
//  Created by bykj on 2019/6/13.
//  Copyright © 2019年 ppb. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
//漆面
@interface autoBeuPaintModel : NSObject
@property(nonatomic, copy)NSString *note;//备注
@property(nonatomic, assign)Boolean isSelect;
@property(nonatomic, assign)Boolean isOxideRemoval;//氧化层去除
@property(nonatomic, assign)Boolean isWax;//是否打蜡
@property(nonatomic, assign)Boolean isNickProcess;//是否划痕处理
@property(nonatomic, assign)Boolean isOrangePeelProcess;//是否橘皮处理
@property(nonatomic, assign)Boolean isLossLightProcess;//是否失光处理
@property(nonatomic, assign)Boolean isSealingGlair;//是否封釉
@property(nonatomic, assign)Boolean isCoating;//是否镀膜
@property(nonatomic, assign)Boolean isPlatingCrystal;//是否镀晶
@property(nonatomic, assign)Boolean isPianoPaintRestoration;//是否钢琴漆修复
@end

NS_ASSUME_NONNULL_END
