#import "GPUImageDarkenBlendFilter+BmBm.h"
@implementation GPUImageDarkenBlendFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 38 == 0;
}

@end
