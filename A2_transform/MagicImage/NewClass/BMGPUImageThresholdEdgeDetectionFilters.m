#import "BMGPUImageThresholdEdgeDetectionFilters.h"
@implementation BMGPUImageThresholdEdgeDetectionFilters
+ (BOOL)cInitwithfragmentshaderfromstringbm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)fInitbm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)JSetthresholdbm:(NSInteger)BM {
    return BM % 42 == 0;
}

@end
