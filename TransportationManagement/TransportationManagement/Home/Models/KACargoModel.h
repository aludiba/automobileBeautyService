//
//  KACargoModel.h
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/2.
//  Copyright © 2020 hb. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface KACargoModel : NSObject
@property(nonatomic, strong)NSDate *KADate;
@property(nonatomic, strong)NSString *KAPlace;
@property(nonatomic, strong)NSString *KACustomerName;
@property(nonatomic, strong)NSString *KACommodityName;
@property(nonatomic, assign)CGFloat KATransportPrice;
@end

NS_ASSUME_NONNULL_END
