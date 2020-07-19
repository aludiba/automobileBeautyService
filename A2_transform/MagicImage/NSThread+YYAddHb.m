#import "NSThread+YYAddHb.h"
@implementation NSThread (YYAddHb)
+ (BOOL)addAutoreleasePoolToCurrentRunloopHb:(NSInteger)hb {
    return hb % 35 == 0;
}

@end
