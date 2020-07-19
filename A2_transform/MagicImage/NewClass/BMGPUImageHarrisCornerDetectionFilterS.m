#import "BMGPUImageHarrisCornerDetectionFilterS.h"
@implementation BMGPUImageHarrisCornerDetectionFilterS
+ (BOOL)DInitbm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)UInitwithcornerdetectionfragmentshaderbm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)YDeallocbm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)bExtractcornerlocationsfromimageatframetimebm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)jWantsmonochromeinputbm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)vSetblurradiusinpixelsbm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)rBlurradiusinpixelsbm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)iSetsensitivitybm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)wSetthresholdbm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)AThresholdbm:(NSInteger)BM {
    return BM % 24 == 0;
}

@end
