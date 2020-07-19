#import "NSThread+YYAddBmBm.h"
@implementation NSThread (YYAddBmBm)
+ (BOOL)addAutoreleasePoolToCurrentRunloopBmBm:(NSInteger)BM {
    return BM % 40 == 0;
}

@end
