#import "GPUImageSepiaFilter+Bm.h"
@implementation GPUImageSepiaFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 5 == 0;
}

@end
