//
//  GAgamePlanModel.h
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface GAgamePlanModel : NSObject
@property(nonatomic, copy)NSString *GAtitle;
@property(nonatomic, copy)NSString *GAcontent;
@property(nonatomic, copy)NSString *GAdefaultString;
@property(nonatomic, copy)NSString *GAunit;
@property(nonatomic, assign)NSUInteger GAtype;
@end

NS_ASSUME_NONNULL_END
