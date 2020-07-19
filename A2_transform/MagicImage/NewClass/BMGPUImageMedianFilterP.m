#import "BMGPUImageMedianFilterP.h"
@implementation BMGPUImageMedianFilterP
+ (BOOL)IInitbm:(NSInteger)BM {
    return BM % 8 == 0;
}

@end
