#import "GPUImageScreenBlendFilter+Bm.h"
@implementation GPUImageScreenBlendFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 48 == 0;
}

@end
