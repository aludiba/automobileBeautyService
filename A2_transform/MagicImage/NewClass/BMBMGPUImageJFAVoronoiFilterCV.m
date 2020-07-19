#import "BMBMGPUImageJFAVoronoiFilterCV.h"
@implementation BMBMGPUImageJFAVoronoiFilterCV
+ (BOOL)pQinit:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)CLsetsizeinpixels:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)fCnextpoweroftwo:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)KHrendertotexturewithverticesltexturecoordinates:(NSInteger)BM {
    return BM % 20 == 0;
}

@end
