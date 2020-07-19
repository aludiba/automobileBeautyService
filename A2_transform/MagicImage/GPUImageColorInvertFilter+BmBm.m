#import "GPUImageColorInvertFilter+BmBm.h"
@implementation GPUImageColorInvertFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 38 == 0;
}

@end
