#import "BMRACSubscriptionSchedulerQ+BmBmHb.h"
@implementation BMRACSubscriptionSchedulerQ (BmBmHb)
+ (BOOL)EinitBmBmHb:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)xScheduleBmBmHb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)PAfterkScheduleBmBmHb:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)xAfteraRepeatingeverykWithleewayeScheduleBmBmHb:(NSInteger)hb {
    return hb % 37 == 0;
}

@end
