#import "BMGPUImageFASTCornerDetectionFilterq+Bm.h"
@implementation BMGPUImageFASTCornerDetectionFilterq (Bm)
+ (BOOL)CinitBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)PInitwithfastdetectorvariantBm:(NSInteger)BM {
    return BM % 29 == 0;
}

@end
