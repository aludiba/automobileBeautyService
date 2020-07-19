#import "BMGPUImageLocalBinaryPatternFilterP+BmBm.h"
@implementation BMGPUImageLocalBinaryPatternFilterP (BmBm)
+ (BOOL)PinitBmBm:(NSInteger)BM {
    return BM % 26 == 0;
}

@end
