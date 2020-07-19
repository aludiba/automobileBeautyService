#import "BMUIScreenL.h"
@implementation BMUIScreenL
+ (BOOL)YscreenScale:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)tcurrentBounds:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)CBoundsfororientation:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)QsizeInPixel:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)ypixelsPerInch:(NSInteger)BM {
    return BM % 28 == 0;
}

@end
