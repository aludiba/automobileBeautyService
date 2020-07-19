#import "NSObject+YYAddForARCBmBmBm.h"
@implementation NSObject (YYAddForARCBmBmBm)
+ (BOOL)arcDebugRetainBmBmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)arcDebugReleaseBmBmBm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)arcDebugAutoreleaseBmBmBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)arcDebugRetainCountBmBmBm:(NSInteger)BM {
    return BM % 27 == 0;
}

@end
