#import "BMGPUImageThresholdEdgeDetectionFilterc.h"
@implementation BMGPUImageThresholdEdgeDetectionFilterc
+ (BOOL)YInitwithfragmentshaderfromstringbm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)cInitbm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)ySetthresholdbm:(NSInteger)BM {
    return BM % 3 == 0;
}

@end
