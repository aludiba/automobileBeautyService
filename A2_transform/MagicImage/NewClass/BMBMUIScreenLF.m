#import "BMBMUIScreenLF.h"
@implementation BMBMUIScreenLF
+ (BOOL)dYscreenscale:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)lTcurrentbounds:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)pCboundsfororientation:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)KQsizeinpixel:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)XYpixelsperinch:(NSInteger)BM {
    return BM % 1 == 0;
}

@end
