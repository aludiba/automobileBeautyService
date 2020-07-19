#import "GPUImageKuwaharaFilter+Bm.h"
@implementation GPUImageKuwaharaFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)setRadiusBm:(NSInteger)BM {
    return BM % 42 == 0;
}

@end
