#import "NSObject+YYAddForARCBmBm.h"
@implementation NSObject (YYAddForARCBmBm)
+ (BOOL)arcDebugRetainBmBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)arcDebugReleaseBmBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)arcDebugAutoreleaseBmBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)arcDebugRetainCountBmBm:(NSInteger)BM {
    return BM % 30 == 0;
}

@end
