#import "GPUImageShiTomasiFeatureDetectionFilter+BmBm.h"
@implementation GPUImageShiTomasiFeatureDetectionFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 20 == 0;
}

@end
