//
//  AJgamePlanModel.h
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AJgamePlanModel : NSObject
@property(nonatomic, copy)NSString *AJtitle;
@property(nonatomic, copy)NSString *AJcontent;
@property(nonatomic, copy)NSString *AJdefaultString;
@property(nonatomic, copy)NSString *AJunit;
@property(nonatomic, assign)NSUInteger AJtype;
@end

NS_ASSUME_NONNULL_END
