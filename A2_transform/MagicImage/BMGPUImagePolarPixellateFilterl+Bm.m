#import "BMGPUImagePolarPixellateFilterl+Bm.h"
@implementation BMGPUImagePolarPixellateFilterl (Bm)
+ (BOOL)UInitbmBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)USetinputrotationatindexbmBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)YSetpixelsizebmBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)XSetcenterbmBm:(NSInteger)BM {
    return BM % 23 == 0;
}

@end
