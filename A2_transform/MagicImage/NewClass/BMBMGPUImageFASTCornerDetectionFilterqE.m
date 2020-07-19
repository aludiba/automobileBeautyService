#import "BMBMGPUImageFASTCornerDetectionFilterqE.h"
@implementation BMBMGPUImageFASTCornerDetectionFilterqE
+ (BOOL)mCinitbm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)IPinitwithfastdetectorvariantbm:(NSInteger)BM {
    return BM % 4 == 0;
}

@end
