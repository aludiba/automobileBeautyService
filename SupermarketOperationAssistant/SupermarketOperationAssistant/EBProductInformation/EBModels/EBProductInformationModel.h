//
//  EBProductInformationModel.h
//  SupermarketOperationAssistant
//
//  Created by 褚红彪 on 2020/5/22.
//  Copyright © 2020 HBC. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface EBProductInformationModel : NSObject
@property(nonatomic, copy)NSString *EBobjectId;
@property(nonatomic, copy)NSString *EBcategory;//类别
@property(nonatomic, copy)NSString *EBdeliveryaddress;//交货地址
@property(nonatomic, copy)NSString *EBpurchasetime;//购买时间
@end

NS_ASSUME_NONNULL_END
