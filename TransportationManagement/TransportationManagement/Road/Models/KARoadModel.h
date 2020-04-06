//
//  KAGasolineModel.h
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/6.
//  Copyright © 2020 hb. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface KARoadModel : NSObject
@property(nonatomic, copy)NSString *KALicensePlateNumber;//车牌号
@property(nonatomic, copy)NSString *KADriverName;//司机名称
@property(nonatomic, copy)NSString *KASituation;//情况
@property(nonatomic, assign)NSUInteger KAPluggingLength;//已堵时长
@property(nonatomic, copy)NSString *KALocation;//情况
@end

NS_ASSUME_NONNULL_END
