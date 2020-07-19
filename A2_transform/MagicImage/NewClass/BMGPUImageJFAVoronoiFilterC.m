#import "BMGPUImageJFAVoronoiFilterC.h"
@implementation BMGPUImageJFAVoronoiFilterC
+ (BOOL)qinit:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)lSetsizeinpixels:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)CNextpoweroftwo:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)hRendertotexturewithverticesLTexturecoordinates:(NSInteger)BM {
    return BM % 43 == 0;
}

@end
