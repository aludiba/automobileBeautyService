#import "RACSignal+BmBm.h"
@implementation RACSignal (BmBm)
+ (BOOL)createSignalBmBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)errorBmBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)neverBmBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)startEagerlyWithSchedulerBlockBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)startLazilyWithSchedulerBlockBmBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)descriptionBmBm:(NSInteger)BM {
    return BM % 44 == 0;
}

@end
