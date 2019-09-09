//
//  PKOverallSituationModel.h
//  PocketBooks
//
//  Created by bykj on 2019/9/9.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface PKOverallSituationModel : NSObject
@property(nonatomic, copy)NSString *monthString;//月份
@property(nonatomic, copy)NSString *totalAmountString;//总额
@property(nonatomic, copy)NSString *limitString;//限额

@property(nonatomic, strong)NSMutableArray *dataArray;
@end

NS_ASSUME_NONNULL_END
