#import "hbGPUImagePolarPixellateFilterz.h"
@implementation hbGPUImagePolarPixellateFilterz
+ (BOOL)rInitbm:(NSInteger)hb {
    return hb % 25 == 0;
}
+ (BOOL)TSetinputrotationatindexbm:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)xSetpixelsizebm:(NSInteger)hb {
    return hb % 47 == 0;
}
+ (BOOL)mSetcenterbm:(NSInteger)hb {
    return hb % 39 == 0;
}

@end
