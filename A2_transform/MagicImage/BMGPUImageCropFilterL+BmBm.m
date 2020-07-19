#import "BMGPUImageCropFilterL+BmBm.h"
@implementation BMGPUImageCropFilterL (BmBm)
+ (BOOL)aInitwithcropregionBmBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)DinitBmBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)ASetinputsizegAtindexBmBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)xcalculateCropTextureCoordinatesBmBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)lNewframereadyattimeqAtindexBmBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)OSetcropregionBmBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)xSetinputrotationPAtindexBmBm:(NSInteger)BM {
    return BM % 5 == 0;
}

@end
