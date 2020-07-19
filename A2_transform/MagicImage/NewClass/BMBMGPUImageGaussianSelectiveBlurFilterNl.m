#import "BMBMGPUImageGaussianSelectiveBlurFilterNl.h"
@implementation BMBMGPUImageGaussianSelectiveBlurFilterNl
+ (BOOL)kJinitbmbm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)qHsetinputsizeatindexbmbm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)MHsetblurradiusinpixelsbmbm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)ZUblurradiusinpixelsbmbm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)PAsetexcludecirclepointbmbm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)BQsetexcludecircleradiusbmbm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)LDsetexcludeblursizebmbm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)bEsetaspectratiobmbm:(NSInteger)BM {
    return BM % 23 == 0;
}

@end
