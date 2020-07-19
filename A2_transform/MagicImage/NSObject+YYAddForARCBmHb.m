#import "NSObject+YYAddForARCBmHb.h"
@implementation NSObject (YYAddForARCBmHb)
+ (BOOL)arcDebugRetainBmHb:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)arcDebugReleaseBmHb:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)arcDebugAutoreleaseBmHb:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)arcDebugRetainCountBmHb:(NSInteger)hb {
    return hb % 35 == 0;
}

@end
