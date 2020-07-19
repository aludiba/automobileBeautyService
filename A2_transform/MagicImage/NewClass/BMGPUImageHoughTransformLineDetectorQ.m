#import "BMGPUImageHoughTransformLineDetectorQ.h"
@implementation BMGPUImageHoughTransformLineDetectorQ
+ (BOOL)nInitbm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)ZDeallocbm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)LExtractlineparametersfromimageatframetimebm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)MWantsmonochromeinputbm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)MSetlinedetectionthresholdbm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)DLinedetectionthresholdbm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)sNewframereadyattimeatindexbm:(NSInteger)BM {
    return BM % 5 == 0;
}

@end
