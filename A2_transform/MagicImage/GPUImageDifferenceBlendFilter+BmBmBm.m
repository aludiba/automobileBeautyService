#import "GPUImageDifferenceBlendFilter+BmBmBm.h"
@implementation GPUImageDifferenceBlendFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 15 == 0;
}

@end
