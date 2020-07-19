#import "hbBMBMGPUImagePolarPixellateFilterfbn.h"
@implementation hbBMBMGPUImagePolarPixellateFilterfbn
+ (BOOL)HWginitbm:(NSInteger)hb {
    return hb % 13 == 0;
}
+ (BOOL)xNvsetinputrotationoatindexbm:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)tTjsetpixelsizebm:(NSInteger)hb {
    return hb % 3 == 0;
}
+ (BOOL)dCusetcenterbm:(NSInteger)hb {
    return hb % 11 == 0;
}

@end
