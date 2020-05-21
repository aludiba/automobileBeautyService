//
//  EBPurchaseStatusAddModel.h
//  SupermarketOperationAssistant
//
//  Created by 褚红彪 on 2020/5/21.
//  Copyright © 2020 HBC. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface EBPurchaseStatusAddModel : NSObject
@property(nonatomic, copy)NSString *EBTitle;
@property(nonatomic, copy)NSString *EBContent;
@property(nonatomic, copy)NSString *EBDefault;
@property(nonatomic, assign)CGFloat EBEditHeight;
@property(nonatomic, assign)Boolean EBisLine;
@end

NS_ASSUME_NONNULL_END
