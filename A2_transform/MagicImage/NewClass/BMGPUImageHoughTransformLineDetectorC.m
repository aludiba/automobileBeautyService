#import "BMGPUImageHoughTransformLineDetectorC.h"
@implementation BMGPUImageHoughTransformLineDetectorC
+ (BOOL)WInitbm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)bDeallocbm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)nExtractlineparametersfromimageatframetimebm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)vWantsmonochromeinputbm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)jSetlinedetectionthresholdbm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)lLinedetectionthresholdbm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)cNewframereadyattimeatindexbm:(NSInteger)BM {
    return BM % 39 == 0;
}

@end
