#import "BMGPUImageRGBErosionFilterI+BmBm.h"
@implementation BMGPUImageRGBErosionFilterI (BmBm)
+ (BOOL)MInitwithradiusBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)CinitBmBm:(NSInteger)BM {
    return BM % 44 == 0;
}

@end
