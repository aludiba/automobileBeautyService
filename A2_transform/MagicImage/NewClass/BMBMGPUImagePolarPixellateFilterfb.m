#import "BMBMGPUImagePolarPixellateFilterfb.h"
@implementation BMBMGPUImagePolarPixellateFilterfb
+ (BOOL)WGinit:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)nVsetinputrotationoatindex:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)tJsetpixelsize:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)cUsetcenter:(NSInteger)BM {
    return BM % 46 == 0;
}

@end
