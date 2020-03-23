//
//  IALuckyNumbersModel.h
//  PocketLuckyNumbers
//
//  Created by 褚红彪 on 2019/12/29.
//  Copyright © 2019 com. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface IALuckyNumbersModel : NSObject
@property(nonatomic, copy)NSString *IAObjectId;//数据标识
@property(nonatomic, assign)int IAMinNumber;//最小数
@property(nonatomic, assign)int IAMaxNumber;//最大数
@property(nonatomic, assign)int IAGeneratedNumber;//当前生成数
@property(nonatomic, strong)NSString *IAGenTimeString;//生成时间
@end

NS_ASSUME_NONNULL_END
