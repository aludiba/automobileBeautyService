#import "BMBMGPUImageFASTCornerDetectionFilterAL.h"
@implementation BMBMGPUImageFASTCornerDetectionFilterAL
+ (BOOL)bVinitbm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)lHinitwithfastdetectorvariantbm:(NSInteger)BM {
    return BM % 20 == 0;
}

@end
