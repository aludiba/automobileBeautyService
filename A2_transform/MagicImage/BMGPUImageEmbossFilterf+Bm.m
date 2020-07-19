#import "BMGPUImageEmbossFilterf+Bm.h"
@implementation BMGPUImageEmbossFilterf (Bm)
+ (BOOL)YinitBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)nSetintensityBm:(NSInteger)BM {
    return BM % 46 == 0;
}

@end
