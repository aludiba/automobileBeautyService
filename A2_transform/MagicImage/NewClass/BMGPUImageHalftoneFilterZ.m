#import "BMGPUImageHalftoneFilterZ.h"
@implementation BMGPUImageHalftoneFilterZ
+ (BOOL)yInitbm:(NSInteger)BM {
    return BM % 38 == 0;
}

@end
