#import "BMGPUImageFASTCornerDetectionFilterA.h"
@implementation BMGPUImageFASTCornerDetectionFilterA
+ (BOOL)VInitbm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)hInitwithfastdetectorvariantbm:(NSInteger)BM {
    return BM % 39 == 0;
}

@end
