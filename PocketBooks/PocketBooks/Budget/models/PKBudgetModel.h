//
//  PKBudgetModel.h
//  PocketBooks
//
//  Created by bykj on 2019/9/4.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface PKBudgetModel : NSObject
@property(nonatomic, assign)NSInteger code;//类别代码
@property(nonatomic, copy)NSString *title;//标题
@property(nonatomic, copy)NSString *content;//内容(数额)
@property(nonatomic, copy)NSString *unit;//单位（货币）
@property(nonatomic, copy)NSString *limits;//每月每项额度限制
@end

NS_ASSUME_NONNULL_END
