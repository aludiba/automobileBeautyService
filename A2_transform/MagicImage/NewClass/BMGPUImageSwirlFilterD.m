#import "BMGPUImageSwirlFilterD.h"
@implementation BMGPUImageSwirlFilterD
+ (BOOL)oInitbm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)nSetinputrotationatindexbm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)bSetradiusbm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)XSetanglebm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)gSetcenterbm:(NSInteger)BM {
    return BM % 43 == 0;
}

@end
