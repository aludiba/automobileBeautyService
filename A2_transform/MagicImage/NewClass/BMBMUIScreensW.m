#import "BMBMUIScreensW.h"
@implementation BMBMUIScreensW
+ (BOOL)LXscreenscalebm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)BAcurrentboundsbm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)bNboundsfororientationbm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)oYsizeinpixelbm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)ZFpixelsperinchbm:(NSInteger)BM {
    return BM % 47 == 0;
}

@end
