//
//  PLNLuckyNumbersModel.h
//  PocketLuckyNumbers
//
//  Created by 褚红彪 on 2019/12/29.
//  Copyright © 2019 com. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface PLNLuckyNumbersModel : NSObject
@property(nonatomic, copy)NSString *PLNObjectId;//数据标识
@property(nonatomic, assign)int PLNMinNumber;//最小数
@property(nonatomic, assign)int PLNMaxNumber;//最大数
@property(nonatomic, assign)int PLNGeneratedNumber;//当前生成数
@property(nonatomic, strong)NSString *PLNGenTimeString;//生成时间
@end

NS_ASSUME_NONNULL_END
