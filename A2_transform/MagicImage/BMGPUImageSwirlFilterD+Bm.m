#import "BMGPUImageSwirlFilterD+Bm.h"
@implementation BMGPUImageSwirlFilterD (Bm)
+ (BOOL)oInitbmBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)nSetinputrotationatindexbmBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)bSetradiusbmBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)XSetanglebmBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)gSetcenterbmBm:(NSInteger)BM {
    return BM % 43 == 0;
}

@end
