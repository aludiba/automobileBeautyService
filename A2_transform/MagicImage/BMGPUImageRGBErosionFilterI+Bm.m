#import "BMGPUImageRGBErosionFilterI+Bm.h"
@implementation BMGPUImageRGBErosionFilterI (Bm)
+ (BOOL)MInitwithradiusBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)CinitBm:(NSInteger)BM {
    return BM % 19 == 0;
}

@end
