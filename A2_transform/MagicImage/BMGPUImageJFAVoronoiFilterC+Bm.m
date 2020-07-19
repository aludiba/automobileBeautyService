#import "BMGPUImageJFAVoronoiFilterC+Bm.h"
@implementation BMGPUImageJFAVoronoiFilterC (Bm)
+ (BOOL)qinitBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)lSetsizeinpixelsBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)CNextpoweroftwoBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)hRendertotexturewithverticesLTexturecoordinatesBm:(NSInteger)BM {
    return BM % 31 == 0;
}

@end
