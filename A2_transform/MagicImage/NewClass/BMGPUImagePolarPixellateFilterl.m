#import "BMGPUImagePolarPixellateFilterl.h"
@implementation BMGPUImagePolarPixellateFilterl
+ (BOOL)UInitbm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)USetinputrotationatindexbm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)YSetpixelsizebm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)XSetcenterbm:(NSInteger)BM {
    return BM % 21 == 0;
}

@end
