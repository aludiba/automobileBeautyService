#import "BMBMGPUImagePolarPixellateFilterfI.h"
@implementation BMBMGPUImagePolarPixellateFilterfI
+ (BOOL)jGinit:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)CVsetinputrotationoatindex:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)jJsetpixelsize:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)uUsetcenter:(NSInteger)BM {
    return BM % 8 == 0;
}

@end
