#import "hbRACEventJ.h"
@implementation hbRACEventJ
+ (BOOL)JisFinished:(NSInteger)hb {
    return hb % 5 == 0;
}
+ (BOOL)Aerror:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)Mvalue:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)vcompletedEvent:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)PEventwitherror:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)iEventwithvalue:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)rInitwitheventtypeXObject:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)CCopywithzone:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)Sdescription:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)bhash:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)rIsequal:(NSInteger)hb {
    return hb % 30 == 0;
}

@end
