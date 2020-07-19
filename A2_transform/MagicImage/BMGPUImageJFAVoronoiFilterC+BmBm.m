#import "BMGPUImageJFAVoronoiFilterC+BmBm.h"
@implementation BMGPUImageJFAVoronoiFilterC (BmBm)
+ (BOOL)qinitBmBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)lSetsizeinpixelsBmBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)CNextpoweroftwoBmBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)hRendertotexturewithverticesLTexturecoordinatesBmBm:(NSInteger)BM {
    return BM % 38 == 0;
}

@end
