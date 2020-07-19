#import "GPUImageLookupFilter+BmBm.h"
@implementation GPUImageLookupFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)setIntensityBmBm:(NSInteger)BM {
    return BM % 30 == 0;
}

@end
