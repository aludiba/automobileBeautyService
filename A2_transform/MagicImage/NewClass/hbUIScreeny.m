#import "hbUIScreeny.h"
@implementation hbUIScreeny
+ (BOOL)OScreenscalebm:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)BCurrentboundsbm:(NSInteger)hb {
    return hb % 26 == 0;
}
+ (BOOL)tBoundsfororientationbm:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)OSizeinpixelbm:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)fPixelsperinchbm:(NSInteger)hb {
    return hb % 3 == 0;
}

@end
