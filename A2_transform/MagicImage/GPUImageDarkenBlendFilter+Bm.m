#import "GPUImageDarkenBlendFilter+Bm.h"
@implementation GPUImageDarkenBlendFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 33 == 0;
}

@end
