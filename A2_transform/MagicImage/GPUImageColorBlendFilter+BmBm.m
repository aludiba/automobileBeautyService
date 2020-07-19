#import "GPUImageColorBlendFilter+BmBm.h"
@implementation GPUImageColorBlendFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 17 == 0;
}

@end
