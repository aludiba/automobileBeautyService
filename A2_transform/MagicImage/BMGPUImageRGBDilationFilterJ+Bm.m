#import "BMGPUImageRGBDilationFilterJ+Bm.h"
@implementation BMGPUImageRGBDilationFilterJ (Bm)
+ (BOOL)VInitwithradiusbmBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)RInitbmBm:(NSInteger)BM {
    return BM % 16 == 0;
}

@end
