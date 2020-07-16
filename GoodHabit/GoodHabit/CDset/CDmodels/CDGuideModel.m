//
//  CDGuideModel.m
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/15.
//  Copyright © 2019 hb. All rights reserved.
//

#import "CDGuideModel.h"

@implementation CDGuideModel
+ (NSDictionary *)modelContainerPropertyGenericClass {
    return @{@"CDpunchArray" : [CDGuideClockInformationModel class]};
}
@end
