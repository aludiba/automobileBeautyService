#import "BMBMGPUImageMotionBlurFilterDZ.h"
@implementation BMBMGPUImageMotionBlurFilterDZ
+ (BOOL)TNinit:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)fJsetinputsizezatindex:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)kBrecalculatetexeloffsets:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)PGsetinputrotationpatindex:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)IXsetblurangle:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)OUsetblursize:(NSInteger)BM {
    return BM % 28 == 0;
}

@end
