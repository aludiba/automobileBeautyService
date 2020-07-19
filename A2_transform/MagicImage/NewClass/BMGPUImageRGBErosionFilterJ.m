#import "BMGPUImageRGBErosionFilterJ.h"
@implementation BMGPUImageRGBErosionFilterJ
+ (BOOL)xInitwithradiusbm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)hInitbm:(NSInteger)BM {
    return BM % 31 == 0;
}

@end
