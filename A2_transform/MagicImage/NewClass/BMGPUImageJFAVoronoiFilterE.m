#import "BMGPUImageJFAVoronoiFilterE.h"
@implementation BMGPUImageJFAVoronoiFilterE
+ (BOOL)WInitbm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)sSetsizeinpixelsbm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)RNextpoweroftwobm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)aRendertotexturewithverticestexturecoordinatesbm:(NSInteger)BM {
    return BM % 4 == 0;
}

@end
