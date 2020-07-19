#import "BMGPUImageNonMaximumSuppressionFilterW+BmBm.h"
@implementation BMGPUImageNonMaximumSuppressionFilterW (BmBm)
+ (BOOL)OinitBmBm:(NSInteger)BM {
    return BM % 40 == 0;
}

@end
