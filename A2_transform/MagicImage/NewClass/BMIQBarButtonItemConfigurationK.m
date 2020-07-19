#import "BMIQBarButtonItemConfigurationK.h"
@implementation BMIQBarButtonItemConfigurationK
+ (BOOL)KInitwithbarbuttonsystemitemGAction:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)IInitwithimagePAction:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)WInitwithtitleHAction:(NSInteger)BM {
    return BM % 25 == 0;
}

@end
