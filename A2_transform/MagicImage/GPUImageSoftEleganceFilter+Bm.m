#import "GPUImageSoftEleganceFilter+Bm.h"
@implementation GPUImageSoftEleganceFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 15 == 0;
}

@end
