#import "BMRACSubscriptionSchedulerQ+BmHb.h"
@implementation BMRACSubscriptionSchedulerQ (BmHb)
+ (BOOL)EinitBmHb:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)xScheduleBmHb:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)PAfterkScheduleBmHb:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)xAfteraRepeatingeverykWithleewayeScheduleBmHb:(NSInteger)hb {
    return hb % 22 == 0;
}

@end
