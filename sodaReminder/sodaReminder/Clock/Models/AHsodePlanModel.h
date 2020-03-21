//
//  AHsodePlanModel.h
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AHsodePlanModel : NSObject
@property(nonatomic, copy)NSString *AHtitle;
@property(nonatomic, copy)NSString *AHcontent;
@property(nonatomic, copy)NSString *AHdefaultString;
@property(nonatomic, copy)NSString *AHunit;
@property(nonatomic, assign)NSUInteger AHtype;
@end

NS_ASSUME_NONNULL_END
