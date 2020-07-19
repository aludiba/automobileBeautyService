#import "BMBMGPUImageJFAVoronoiFilterCA.h"
@implementation BMBMGPUImageJFAVoronoiFilterCA
+ (BOOL)SQinit:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)gLsetsizeinpixels:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)aCnextpoweroftwo:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)uHrendertotexturewithverticesltexturecoordinates:(NSInteger)BM {
    return BM % 12 == 0;
}

@end
