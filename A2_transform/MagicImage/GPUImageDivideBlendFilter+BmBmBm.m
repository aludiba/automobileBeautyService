#import "GPUImageDivideBlendFilter+BmBmBm.h"
@implementation GPUImageDivideBlendFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 15 == 0;
}

@end
