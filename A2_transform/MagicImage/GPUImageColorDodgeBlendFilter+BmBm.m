#import "GPUImageColorDodgeBlendFilter+BmBm.h"
@implementation GPUImageColorDodgeBlendFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 27 == 0;
}

@end
