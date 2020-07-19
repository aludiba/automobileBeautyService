#import "BMGPUImageLaplacianFilterO.h"
@implementation BMGPUImageLaplacianFilterO
+ (BOOL)yInitbm:(NSInteger)BM {
    return BM % 24 == 0;
}

@end
