#import "BMGPUImageJFAVoronoiFilterl.h"
@implementation BMGPUImageJFAVoronoiFilterl
+ (BOOL)qinit:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)pSetsizeinpixels:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)gNextpoweroftwo:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)ORendertotexturewithverticesgTexturecoordinates:(NSInteger)BM {
    return BM % 23 == 0;
}

@end
