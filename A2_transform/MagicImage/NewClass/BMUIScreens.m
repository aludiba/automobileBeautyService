#import "BMUIScreens.h"
@implementation BMUIScreens
+ (BOOL)xScreenscalebm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)aCurrentboundsbm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)nBoundsfororientationbm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)ySizeinpixelbm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)FPixelsperinchbm:(NSInteger)BM {
    return BM % 37 == 0;
}

@end
