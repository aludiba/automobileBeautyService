#import "hbUIScreeng.h"
@implementation hbUIScreeng
+ (BOOL)DscreenScale:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)fcurrentBounds:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)HBoundsfororientation:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)nsizeInPixel:(NSInteger)hb {
    return hb % 43 == 0;
}
+ (BOOL)OpixelsPerInch:(NSInteger)hb {
    return hb % 31 == 0;
}

@end
