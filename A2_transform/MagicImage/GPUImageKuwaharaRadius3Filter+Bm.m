#import "GPUImageKuwaharaRadius3Filter+Bm.h"
@implementation GPUImageKuwaharaRadius3Filter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 28 == 0;
}

@end
