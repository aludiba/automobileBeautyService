//
//  BGCargoModel.h
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/2.
//  Copyright © 2020 hb. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BGCargoModel : NSObject
@property(nonatomic, copy)NSString *BGobjectId;
@property(nonatomic, strong)NSDate *BGDate;
@property(nonatomic, copy)NSString *BGPlace;
@property(nonatomic, copy)NSString *BGCustomerName;
@property(nonatomic, copy)NSString *BGCommodityName;
@property(nonatomic, assign)CGFloat BGTransportPrice;
@end

NS_ASSUME_NONNULL_END
