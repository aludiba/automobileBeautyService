#import "GPUImageSepiaFilter+BmBm.h"
@implementation GPUImageSepiaFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 12 == 0;
}

@end
