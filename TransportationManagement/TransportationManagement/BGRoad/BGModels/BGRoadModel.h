//
//  BGGasolineModel.h
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/6.
//  Copyright © 2020 hb. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BGRoadModel : NSObject
@property(nonatomic, copy)NSString *BGobjectId;
@property(nonatomic, strong)NSDate *BGDate;
@property(nonatomic, copy)NSString *BGLicensePlateNumber;//车牌号
@property(nonatomic, copy)NSString *BGDriverName;//司机名称
@property(nonatomic, copy)NSString *BGSituation;//情况
@property(nonatomic, assign)NSUInteger BGPluggingLength;//已堵时长
@property(nonatomic, copy)NSString *BGLocation;//位置
@end

NS_ASSUME_NONNULL_END
