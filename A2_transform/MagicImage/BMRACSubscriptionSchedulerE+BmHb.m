#import "BMRACSubscriptionSchedulerE+BmHb.h"
@implementation BMRACSubscriptionSchedulerE (BmHb)
+ (BOOL)dinitBmHb:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)IScheduleBmHb:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)SAfterrScheduleBmHb:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)AAfterDRepeatingeverySWithleewayfScheduleBmHb:(NSInteger)hb {
    return hb % 42 == 0;
}

@end
