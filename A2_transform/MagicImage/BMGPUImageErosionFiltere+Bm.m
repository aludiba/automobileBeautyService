#import "BMGPUImageErosionFiltere+Bm.h"
@implementation BMGPUImageErosionFiltere (Bm)
+ (BOOL)KInitwithradiusbmBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)XInitbmBm:(NSInteger)BM {
    return BM % 32 == 0;
}

@end
