#import "BMGPUImageJFAVoronoiFilterh.h"
@implementation BMGPUImageJFAVoronoiFilterh
+ (BOOL)SInitbm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)tSetsizeinpixelsbm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)sNextpoweroftwobm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)eRendertotexturewithverticestexturecoordinatesbm:(NSInteger)BM {
    return BM % 12 == 0;
}

@end
