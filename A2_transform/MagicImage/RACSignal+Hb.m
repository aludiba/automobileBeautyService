#import "RACSignal+Hb.h"
@implementation RACSignal (Hb)
+ (BOOL)createSignalHb:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)errorHb:(NSInteger)hb {
    return hb % 3 == 0;
}
+ (BOOL)neverHb:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)startEagerlyWithSchedulerBlockHb:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)startLazilyWithSchedulerBlockHb:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)descriptionHb:(NSInteger)hb {
    return hb % 40 == 0;
}

@end
