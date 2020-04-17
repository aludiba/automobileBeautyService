//
//  ALCargoModel.h
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/2.
//  Copyright © 2020 hb. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ALCargoModel : NSObject
@property(nonatomic, copy)NSString *ALobjectId;
@property(nonatomic, strong)NSDate *ALDate;
@property(nonatomic, copy)NSString *ALPlace;
@property(nonatomic, copy)NSString *ALCustomerName;
@property(nonatomic, copy)NSString *ALCommodityName;
@property(nonatomic, assign)CGFloat ALTransportPrice;
@end

NS_ASSUME_NONNULL_END
