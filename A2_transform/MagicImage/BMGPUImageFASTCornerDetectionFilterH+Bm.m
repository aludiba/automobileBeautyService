#import "BMGPUImageFASTCornerDetectionFilterH+Bm.h"
@implementation BMGPUImageFASTCornerDetectionFilterH (Bm)
+ (BOOL)qinitBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)KInitwithfastdetectorvariantBm:(NSInteger)BM {
    return BM % 23 == 0;
}

@end
