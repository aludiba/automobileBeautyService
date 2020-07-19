#import "BMGPUImageFASTCornerDetectionFilterq+BmBm.h"
@implementation BMGPUImageFASTCornerDetectionFilterq (BmBm)
+ (BOOL)CinitBmBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)PInitwithfastdetectorvariantBmBm:(NSInteger)BM {
    return BM % 29 == 0;
}

@end
