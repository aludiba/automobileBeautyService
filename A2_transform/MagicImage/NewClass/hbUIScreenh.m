#import "hbUIScreenh.h"
@implementation hbUIScreenh
+ (BOOL)yScreenscalebm:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)VCurrentboundsbm:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)lBoundsfororientationbm:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)PSizeinpixelbm:(NSInteger)hb {
    return hb % 25 == 0;
}
+ (BOOL)LPixelsperinchbm:(NSInteger)hb {
    return hb % 26 == 0;
}

@end
