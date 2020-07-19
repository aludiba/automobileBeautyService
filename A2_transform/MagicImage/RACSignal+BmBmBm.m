#import "RACSignal+BmBmBm.h"
@implementation RACSignal (BmBmBm)
+ (BOOL)createSignalBmBmBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)errorBmBmBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)neverBmBmBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)startEagerlyWithSchedulerBlockBmBmBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)startLazilyWithSchedulerBlockBmBmBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)descriptionBmBmBm:(NSInteger)BM {
    return BM % 12 == 0;
}

@end
