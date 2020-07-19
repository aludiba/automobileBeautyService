#import "RACSignal+BmHb.h"
@implementation RACSignal (BmHb)
+ (BOOL)createSignalBmHb:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)errorBmHb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)neverBmHb:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)startEagerlyWithSchedulerBlockBmHb:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)startLazilyWithSchedulerBlockBmHb:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)descriptionBmHb:(NSInteger)hb {
    return hb % 14 == 0;
}

@end
