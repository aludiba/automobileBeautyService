#import "GPUImageDarkenBlendFilter+BmBmBm.h"
@implementation GPUImageDarkenBlendFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 31 == 0;
}

@end
