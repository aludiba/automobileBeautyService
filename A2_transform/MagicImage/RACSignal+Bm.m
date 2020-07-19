#import "RACSignal+Bm.h"
@implementation RACSignal (Bm)
+ (BOOL)createSignalBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)errorBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)neverBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)startEagerlyWithSchedulerBlockBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)startLazilyWithSchedulerBlockBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)descriptionBm:(NSInteger)BM {
    return BM % 15 == 0;
}

@end
