#import "BMBMGPUImageMotionBlurFilterlu.h"
@implementation BMBMGPUImageMotionBlurFilterlu
+ (BOOL)vEinit:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)lSsetinputsizefatindex:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)bHrecalculatetexeloffsets:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)ATsetinputrotationvatindex:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)kPsetblurangle:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)cOsetblursize:(NSInteger)BM {
    return BM % 38 == 0;
}

@end
