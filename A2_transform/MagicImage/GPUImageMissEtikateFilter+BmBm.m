#import "GPUImageMissEtikateFilter+BmBm.h"
@implementation GPUImageMissEtikateFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 20 == 0;
}

@end
