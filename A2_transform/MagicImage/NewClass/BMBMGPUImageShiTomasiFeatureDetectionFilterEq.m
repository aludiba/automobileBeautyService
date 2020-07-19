#import "BMBMGPUImageShiTomasiFeatureDetectionFilterEQ.h"
@implementation BMBMGPUImageShiTomasiFeatureDetectionFilterEQ
+ (BOOL)OSinit:(NSInteger)BM {
    return BM % 16 == 0;
}

@end
