//
//  PVScorecardModel.m
//  PocketFootballScore
//
//  Created by bykj on 2019/10/23.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PVScorecardModel.h"

@implementation PVScorecardModel
+ (NSDictionary *)modelContainerPropertyGenericClass {
    return @{@"PVBureauPointsArray" : [PVBureauPointsModel class]};
}
@end
