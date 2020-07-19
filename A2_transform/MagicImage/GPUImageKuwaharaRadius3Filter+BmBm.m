#import "GPUImageKuwaharaRadius3Filter+BmBm.h"
@implementation GPUImageKuwaharaRadius3Filter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 31 == 0;
}

@end
