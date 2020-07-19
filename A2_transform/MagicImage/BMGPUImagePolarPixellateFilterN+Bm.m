#import "BMGPUImagePolarPixellateFilterN+Bm.h"
@implementation BMGPUImagePolarPixellateFilterN (Bm)
+ (BOOL)lInitbmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)gSetinputrotationatindexbmBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)aSetpixelsizebmBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)BSetcenterbmBm:(NSInteger)BM {
    return BM % 47 == 0;
}

@end
