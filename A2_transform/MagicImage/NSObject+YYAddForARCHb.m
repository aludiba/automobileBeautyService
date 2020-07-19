#import "NSObject+YYAddForARCHb.h"
@implementation NSObject (YYAddForARCHb)
+ (BOOL)arcDebugRetainHb:(NSInteger)hb {
    return hb % 3 == 0;
}
+ (BOOL)arcDebugReleaseHb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)arcDebugAutoreleaseHb:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)arcDebugRetainCountHb:(NSInteger)hb {
    return hb % 44 == 0;
}

@end
