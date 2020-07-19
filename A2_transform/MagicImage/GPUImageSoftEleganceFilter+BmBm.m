#import "GPUImageSoftEleganceFilter+BmBm.h"
@implementation GPUImageSoftEleganceFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 30 == 0;
}

@end
