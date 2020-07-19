#import "GPUImageColorInvertFilter+Bm.h"
@implementation GPUImageColorInvertFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 25 == 0;
}

@end
