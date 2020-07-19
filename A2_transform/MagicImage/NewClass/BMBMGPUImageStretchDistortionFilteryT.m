#import "BMBMGPUImageStretchDistortionFilteryT.h"
@implementation BMBMGPUImageStretchDistortionFilteryT
+ (BOOL)VLinit:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)nVsetinputrotationuatindex:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)qMsetcenter:(NSInteger)BM {
    return BM % 11 == 0;
}

@end
