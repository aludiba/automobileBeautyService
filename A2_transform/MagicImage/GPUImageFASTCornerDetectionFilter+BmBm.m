#import "GPUImageFASTCornerDetectionFilter+BmBm.h"
@implementation GPUImageFASTCornerDetectionFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)initWithFASTDetectorVariantBmBm:(NSInteger)BM {
    return BM % 30 == 0;
}

@end
