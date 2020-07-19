#import "BMGPUImageGaussianSelectiveBlurFilterl.h"
@implementation BMGPUImageGaussianSelectiveBlurFilterl
+ (BOOL)UInitbmbm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)kSetinputsizeatindexbmbm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)FSetblurradiusinpixelsbmbm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)fBlurradiusinpixelsbmbm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)iSetexcludecirclepointbmbm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)ZSetexcludecircleradiusbmbm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)RSetexcludeblursizebmbm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)CSetaspectratiobmbm:(NSInteger)BM {
    return BM % 35 == 0;
}

@end
