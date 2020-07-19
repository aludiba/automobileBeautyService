#import "GPUImageShiTomasiFeatureDetectionFilter+Bm.h"
@implementation GPUImageShiTomasiFeatureDetectionFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 8 == 0;
}

@end
