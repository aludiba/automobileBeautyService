#import "BMGPUImageDilationFilteru+Bm.h"
@implementation BMGPUImageDilationFilteru (Bm)
+ (BOOL)mInitwithradiusbmBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)qInitbmBm:(NSInteger)BM {
    return BM % 8 == 0;
}

@end
