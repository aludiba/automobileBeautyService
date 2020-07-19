#import "BMGPUImageSepiaFiltera.h"
@implementation BMGPUImageSepiaFiltera
+ (BOOL)yInitbm:(NSInteger)BM {
    return BM % 24 == 0;
}

@end
