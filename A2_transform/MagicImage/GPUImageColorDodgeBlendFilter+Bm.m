#import "GPUImageColorDodgeBlendFilter+Bm.h"
@implementation GPUImageColorDodgeBlendFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 28 == 0;
}

@end
