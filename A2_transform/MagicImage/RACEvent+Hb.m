#import "RACEvent+Hb.h"
@implementation RACEvent (Hb)
+ (BOOL)isFinishedHb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)errorHb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)valueHb:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)completedEventHb:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)eventWithErrorHb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)eventWithValueHb:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)initWithEventTypeObjectHb:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)copyWithZoneHb:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)descriptionHb:(NSInteger)hb {
    return hb % 37 == 0;
}
+ (BOOL)hashHb:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)isEqualHb:(NSInteger)hb {
    return hb % 46 == 0;
}

@end
