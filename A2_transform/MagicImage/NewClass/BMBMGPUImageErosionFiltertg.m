#import "BMBMGPUImageErosionFiltertg.h"
@implementation BMBMGPUImageErosionFiltertg
+ (BOOL)fUinitwithradius:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)NAinit:(NSInteger)BM {
    return BM % 44 == 0;
}

@end
