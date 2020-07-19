#import "NSThread+YYAddBm.h"
@implementation NSThread (YYAddBm)
+ (BOOL)addAutoreleasePoolToCurrentRunloopBm:(NSInteger)BM {
    return BM % 22 == 0;
}

@end
