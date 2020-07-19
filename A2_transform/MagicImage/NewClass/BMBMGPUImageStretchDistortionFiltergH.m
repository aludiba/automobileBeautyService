#import "BMBMGPUImageStretchDistortionFiltergH.h"
@implementation BMBMGPUImageStretchDistortionFiltergH
+ (BOOL)jMinit:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)xOsetinputrotationhatindex:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)yAsetcenter:(NSInteger)BM {
    return BM % 35 == 0;
}

@end
