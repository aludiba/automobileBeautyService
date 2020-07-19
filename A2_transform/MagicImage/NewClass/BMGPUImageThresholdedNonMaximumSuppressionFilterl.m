#import "BMGPUImageThresholdedNonMaximumSuppressionFilterl.h"
@implementation BMGPUImageThresholdedNonMaximumSuppressionFilterl
+ (BOOL)Oinit:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)lInitwithpackedcolorspace:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)uSetthreshold:(NSInteger)BM {
    return BM % 2 == 0;
}

@end
