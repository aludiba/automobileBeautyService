#import "BMGPUImagePolarPixellateFilterN.h"
@implementation BMGPUImagePolarPixellateFilterN
+ (BOOL)lInitbm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)gSetinputrotationatindexbm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)aSetpixelsizebm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)BSetcenterbm:(NSInteger)BM {
    return BM % 27 == 0;
}

@end
