#import "RACImmediateScheduler+Bm.h"
@implementation RACImmediateScheduler (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)scheduleBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)afterScheduleBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)afterRepeatingeveryWithleewayScheduleBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)scheduleRecursiveBlockBm:(NSInteger)BM {
    return BM % 23 == 0;
}

@end
