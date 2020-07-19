#import "GPUImageFASTCornerDetectionFilter+BmBmBm.h"
@implementation GPUImageFASTCornerDetectionFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)initWithFASTDetectorVariantBmBmBm:(NSInteger)BM {
    return BM % 47 == 0;
}

@end
