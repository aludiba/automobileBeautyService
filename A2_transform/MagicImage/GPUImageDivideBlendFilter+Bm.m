#import "GPUImageDivideBlendFilter+Bm.h"
@implementation GPUImageDivideBlendFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 26 == 0;
}

@end
