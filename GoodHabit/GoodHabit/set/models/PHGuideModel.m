//
//  PHGuideModel.m
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/15.
//  Copyright © 2019 hb. All rights reserved.
//

#import "PHGuideModel.h"

@implementation PHGuideModel
+ (NSDictionary *)modelContainerPropertyGenericClass {
    return @{@"PHpunchArray" : [PHGuideClockInformationModel class]};
}
@end
