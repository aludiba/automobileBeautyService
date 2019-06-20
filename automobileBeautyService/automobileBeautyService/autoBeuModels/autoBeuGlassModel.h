//
//  auto4sFuelLineModel.h
//  carMaintenanceCustomerServiceRecord
//
//  Created by bykj on 2019/6/13.
//  Copyright © 2019年 ppb. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
//玻璃
@interface autoBeuGlassModel : NSObject
@property(nonatomic, copy)NSString *note;//备注
@property(nonatomic, assign)Boolean isSelect;
@property(nonatomic, assign)Boolean isGlassOilFilmRemoval;//是否玻璃油膜去除
@property(nonatomic, assign)Boolean isPlatingGlassCrystal;//是否玻璃镀晶
@end

NS_ASSUME_NONNULL_END
