#import "BMGPUImageLuminanceThresholdFilterq.h"
@implementation BMGPUImageLuminanceThresholdFilterq
+ (BOOL)Kinit:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)gSetthreshold:(NSInteger)BM {
    return BM % 23 == 0;
}

@end
