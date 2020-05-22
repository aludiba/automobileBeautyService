//
//  EBColleaguesModel.h
//  SupermarketOperationAssistant
//
//  Created by 褚红彪 on 2020/5/22.
//  Copyright © 2020 HBC. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface EBColleaguesModel : NSObject
@property(nonatomic, copy)NSString *EBobjectId;
@property(nonatomic, copy)NSString *EBname;//名称
@property(nonatomic, copy)NSString *EBposition;//地址
@property(nonatomic, copy)NSString *EBwage;//工资
@property(nonatomic, copy)NSString *EBentrytime;//入境时间
@end

NS_ASSUME_NONNULL_END
