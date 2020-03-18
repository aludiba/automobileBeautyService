//
//  EAsodePlanModel.h
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface EAsodePlanModel : NSObject
@property(nonatomic, copy)NSString *EAtitle;
@property(nonatomic, copy)NSString *EAcontent;
@property(nonatomic, copy)NSString *EAdefaultString;
@property(nonatomic, copy)NSString *EAunit;
@property(nonatomic, assign)NSUInteger EAtype;
@end

NS_ASSUME_NONNULL_END
