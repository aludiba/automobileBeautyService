#import "BMGPUImageFASTCornerDetectionFilterq.h"
@implementation BMGPUImageFASTCornerDetectionFilterq
+ (BOOL)Cinit:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)PInitwithfastdetectorvariant:(NSInteger)BM {
    return BM % 35 == 0;
}

@end
