#import "BMBMGPUImageErosionFiltertR.h"
@implementation BMBMGPUImageErosionFiltertR
+ (BOOL)HBinitwithradius:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)dDinit:(NSInteger)BM {
    return BM % 12 == 0;
}

@end
