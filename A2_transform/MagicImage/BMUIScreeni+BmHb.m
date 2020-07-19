#import "BMUIScreeni+BmHb.h"
@implementation BMUIScreeni (BmHb)
+ (BOOL)JscreenScaleBmHb:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)hcurrentBoundsBmHb:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)nBoundsfororientationBmHb:(NSInteger)hb {
    return hb % 7 == 0;
}
+ (BOOL)zsizeInPixelBmHb:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)QpixelsPerInchBmHb:(NSInteger)hb {
    return hb % 12 == 0;
}

@end
