#import "BMBMGPUImageCGAColorspaceFilterME+Bm.h"
@implementation BMBMGPUImageCGAColorspaceFilterME (Bm)
+ (BOOL)QGinitBm:(NSInteger)BM {
    return BM % 32 == 0;
}

@end
