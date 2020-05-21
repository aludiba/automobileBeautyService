//
//  EBPurchaseStatusModel.h
//  SupermarketOperationAssistant
//
//  Created by 褚红彪 on 2020/5/21.
//  Copyright © 2020 HEB. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface EBPurchaseStatusModel : NSObject
@property(nonatomic, copy)NSString *EBobjectId;
@property(nonatomic, copy)NSString *EBcategory;//类别
@property(nonatomic, copy)NSString *EBquantity;//数量
@property(nonatomic, copy)NSString *EBpurchasetime;//购买时间
@end

NS_ASSUME_NONNULL_END
