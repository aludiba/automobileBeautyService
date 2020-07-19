#import "BMGPUImageLuminanceThresholdFilterB.h"
@implementation BMGPUImageLuminanceThresholdFilterB
+ (BOOL)uinit:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)WSetthreshold:(NSInteger)BM {
    return BM % 50 == 0;
}

@end
