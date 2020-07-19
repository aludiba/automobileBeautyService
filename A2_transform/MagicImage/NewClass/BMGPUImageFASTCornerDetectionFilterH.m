#import "BMGPUImageFASTCornerDetectionFilterH.h"
@implementation BMGPUImageFASTCornerDetectionFilterH
+ (BOOL)qinit:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)KInitwithfastdetectorvariant:(NSInteger)BM {
    return BM % 18 == 0;
}

@end
