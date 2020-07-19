#import "BMGPUImageRGBDilationFiltero+Bm.h"
@implementation BMGPUImageRGBDilationFiltero (Bm)
+ (BOOL)gInitwithradiusBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)IinitBm:(NSInteger)BM {
    return BM % 12 == 0;
}

@end
