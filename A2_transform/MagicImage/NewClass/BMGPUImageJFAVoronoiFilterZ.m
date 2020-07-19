#import "BMGPUImageJFAVoronoiFilterZ.h"
@implementation BMGPUImageJFAVoronoiFilterZ
+ (BOOL)EInitbmbm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)pSetsizeinpixelsbmbm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)bNextpoweroftwobmbm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)ORendertotexturewithverticestexturecoordinatesbmbm:(NSInteger)BM {
    return BM % 9 == 0;
}

@end
