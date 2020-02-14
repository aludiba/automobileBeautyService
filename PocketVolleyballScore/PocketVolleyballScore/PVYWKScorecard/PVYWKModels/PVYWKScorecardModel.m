//
//  PVYWKScorecardModel.m
//  PocketFootballScore
//
//  Created by bykj on 2019/10/23.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PVYWKScorecardModel.h"

@implementation PVYWKScorecardModel
+ (NSDictionary *)modelContainerPropertyGenericClass {
    return @{@"PVYWKBureauPointsArray" : [PVYWKBureauPointsModel class]};
}
@end
