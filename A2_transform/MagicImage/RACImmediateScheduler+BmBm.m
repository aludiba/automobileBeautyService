#import "RACImmediateScheduler+BmBm.h"
@implementation RACImmediateScheduler (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)scheduleBmBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)afterScheduleBmBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)afterRepeatingeveryWithleewayScheduleBmBm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)scheduleRecursiveBlockBmBm:(NSInteger)BM {
    return BM % 46 == 0;
}

@end
