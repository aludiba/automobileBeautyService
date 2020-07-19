#import "NSObject+YYAddForARCBm.h"
@implementation NSObject (YYAddForARCBm)
+ (BOOL)arcDebugRetainBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)arcDebugReleaseBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)arcDebugAutoreleaseBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)arcDebugRetainCountBm:(NSInteger)BM {
    return BM % 16 == 0;
}

@end
