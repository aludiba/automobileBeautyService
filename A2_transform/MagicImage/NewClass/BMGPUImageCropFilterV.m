#import "BMGPUImageCropFilterV.h"
@implementation BMGPUImageCropFilterV
+ (BOOL)FInitwithcropregion:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)einit:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)lSetinputsizeCAtindex:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)CcalculateCropTextureCoordinates:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)VNewframereadyattimekAtindex:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)rSetcropregion:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)RSetinputrotationkAtindex:(NSInteger)BM {
    return BM % 48 == 0;
}

@end
