#import "BMGPUImageJFAVoronoiFilterl+Bm.h"
@implementation BMGPUImageJFAVoronoiFilterl (Bm)
+ (BOOL)qinitBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)pSetsizeinpixelsBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)gNextpoweroftwoBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)ORendertotexturewithverticesgTexturecoordinatesBm:(NSInteger)BM {
    return BM % 37 == 0;
}

@end
