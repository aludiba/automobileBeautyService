#import "BMNSThreads.h"
@implementation BMNSThreads
+ (BOOL)zAddautoreleasepooltocurrentrunloopbm:(NSInteger)BM {
    return BM % 25 == 0;
}

@end
