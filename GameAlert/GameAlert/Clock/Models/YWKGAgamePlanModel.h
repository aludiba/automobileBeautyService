//
//  YWKGAgamePlanModel.h
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface YWKGAgamePlanModel : NSObject
@property(nonatomic, copy)NSString *YWKGAtitle;
@property(nonatomic, copy)NSString *YWKGAcontent;
@property(nonatomic, copy)NSString *YWKGAdefaultString;
@property(nonatomic, copy)NSString *YWKGAunit;
@property(nonatomic, assign)NSUInteger YWKGAtype;
@end

NS_ASSUME_NONNULL_END
