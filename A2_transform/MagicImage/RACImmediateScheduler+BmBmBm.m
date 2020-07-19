#import "RACImmediateScheduler+BmBmBm.h"
@implementation RACImmediateScheduler (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)scheduleBmBmBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)afterScheduleBmBmBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)afterRepeatingeveryWithleewayScheduleBmBmBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)scheduleRecursiveBlockBmBmBm:(NSInteger)BM {
    return BM % 23 == 0;
}

@end
