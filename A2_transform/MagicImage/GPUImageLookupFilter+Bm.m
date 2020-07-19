#import "GPUImageLookupFilter+Bm.h"
@implementation GPUImageLookupFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)setIntensityBm:(NSInteger)BM {
    return BM % 43 == 0;
}

@end
