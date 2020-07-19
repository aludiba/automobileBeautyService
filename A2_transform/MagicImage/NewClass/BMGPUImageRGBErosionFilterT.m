#import "BMGPUImageRGBErosionFilterT.h"
@implementation BMGPUImageRGBErosionFilterT
+ (BOOL)HInitwithradiusbm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)sInitbm:(NSInteger)BM {
    return BM % 37 == 0;
}

@end
