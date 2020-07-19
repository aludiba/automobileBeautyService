#import "BMGPUImageCropFilterL+Bm.h"
@implementation BMGPUImageCropFilterL (Bm)
+ (BOOL)aInitwithcropregionBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)DinitBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)ASetinputsizegAtindexBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)xcalculateCropTextureCoordinatesBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)lNewframereadyattimeqAtindexBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)OSetcropregionBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)xSetinputrotationPAtindexBm:(NSInteger)BM {
    return BM % 45 == 0;
}

@end
