//
//  AFgamePlanModel.h
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AFgamePlanModel : NSObject
@property(nonatomic, copy)NSString *AFtitle;
@property(nonatomic, copy)NSString *AFcontent;
@property(nonatomic, copy)NSString *AFdefaultString;
@property(nonatomic, copy)NSString *AFunit;
@property(nonatomic, assign)NSUInteger AFtype;
@end

NS_ASSUME_NONNULL_END
