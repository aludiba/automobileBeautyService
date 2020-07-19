#import "BMGPUImageRGBErosionFilterN+Bm.h"
@implementation BMGPUImageRGBErosionFilterN (Bm)
+ (BOOL)VInitwithradiusBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)VinitBm:(NSInteger)BM {
    return BM % 15 == 0;
}

@end
