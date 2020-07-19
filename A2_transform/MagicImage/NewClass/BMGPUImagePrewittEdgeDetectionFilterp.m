#import "BMGPUImagePrewittEdgeDetectionFilterp.h"
@implementation BMGPUImagePrewittEdgeDetectionFilterp
+ (BOOL)Rinit:(NSInteger)BM {
    return BM % 22 == 0;
}

@end
