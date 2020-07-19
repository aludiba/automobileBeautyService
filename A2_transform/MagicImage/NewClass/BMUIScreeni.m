#import "BMUIScreeni.h"
@implementation BMUIScreeni
+ (BOOL)JscreenScale:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)hcurrentBounds:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)nBoundsfororientation:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)zsizeInPixel:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)QpixelsPerInch:(NSInteger)BM {
    return BM % 22 == 0;
}

@end
