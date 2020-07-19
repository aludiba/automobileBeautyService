#import "GPUImageDifferenceBlendFilter+BmBm.h"
@implementation GPUImageDifferenceBlendFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 26 == 0;
}

@end
