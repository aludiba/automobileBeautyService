#import "hbUIScreenK.h"
@implementation hbUIScreenK
+ (BOOL)lscreenScale:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)ccurrentBounds:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)NBoundsfororientation:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)XsizeInPixel:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)mpixelsPerInch:(NSInteger)hb {
    return hb % 31 == 0;
}

@end
