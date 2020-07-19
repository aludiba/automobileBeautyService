#import "GPUImageFASTCornerDetectionFilter+Bm.h"
@implementation GPUImageFASTCornerDetectionFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)initWithFASTDetectorVariantBm:(NSInteger)BM {
    return BM % 46 == 0;
}

@end
