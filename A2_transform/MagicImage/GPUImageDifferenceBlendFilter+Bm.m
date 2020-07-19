#import "GPUImageDifferenceBlendFilter+Bm.h"
@implementation GPUImageDifferenceBlendFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 25 == 0;
}

@end
