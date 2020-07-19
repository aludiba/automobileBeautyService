#import "BMGPUImageLaplacianFilterO+BmBm.h"
@implementation BMGPUImageLaplacianFilterO (BmBm)
+ (BOOL)ZinitBmBm:(NSInteger)BM {
    return BM % 24 == 0;
}

@end
