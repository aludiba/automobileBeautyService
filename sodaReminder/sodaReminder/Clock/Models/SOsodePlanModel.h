//
//  SOsodePlanModel.h
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SOsodePlanModel : NSObject
@property(nonatomic, copy)NSString *SOtitle;
@property(nonatomic, copy)NSString *SOcontent;
@property(nonatomic, copy)NSString *SOdefaultString;
@property(nonatomic, copy)NSString *SOunit;
@property(nonatomic, assign)NSUInteger SOtype;
@end

NS_ASSUME_NONNULL_END
