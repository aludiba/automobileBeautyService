#import "GPUImageLookupFilter+BmBmBm.h"
@implementation GPUImageLookupFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)setIntensityBmBmBm:(NSInteger)BM {
    return BM % 12 == 0;
}

@end
