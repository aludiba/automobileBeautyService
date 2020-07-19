#import "GPUImageDivideBlendFilter+BmBm.h"
@implementation GPUImageDivideBlendFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 26 == 0;
}

@end
