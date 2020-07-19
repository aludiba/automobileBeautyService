#import "GPUImageScreenBlendFilter+BmBm.h"
@implementation GPUImageScreenBlendFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 25 == 0;
}

@end
