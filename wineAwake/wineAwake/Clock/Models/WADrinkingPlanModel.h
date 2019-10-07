//
//  WADrinkingPlanModel.h
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface WADrinkingPlanModel : NSObject
@property(nonatomic, copy)NSString *title;
@property(nonatomic, copy)NSString *content;
@property(nonatomic, copy)NSString *defaultString;
@property(nonatomic, copy)NSString *unit;
@property(nonatomic, assign)NSUInteger type;
@end

NS_ASSUME_NONNULL_END
