//
//  ALGasolineModel.h
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/6.
//  Copyright © 2020 hb. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ALRoadModel : NSObject
@property(nonatomic, copy)NSString *ALobjectId;
@property(nonatomic, strong)NSDate *ALDate;
@property(nonatomic, copy)NSString *ALLicensePlateNumber;//车牌号
@property(nonatomic, copy)NSString *ALDriverName;//司机名称
@property(nonatomic, copy)NSString *ALSituation;//情况
@property(nonatomic, assign)NSUInteger ALPluggingLength;//已堵时长
@property(nonatomic, copy)NSString *ALLocation;//位置
@end

NS_ASSUME_NONNULL_END
