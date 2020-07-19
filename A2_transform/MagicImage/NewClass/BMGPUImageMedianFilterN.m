#import "BMGPUImageMedianFilterN.h"
@implementation BMGPUImageMedianFilterN
+ (BOOL)Yinit:(NSInteger)BM {
    return BM % 25 == 0;
}

@end
