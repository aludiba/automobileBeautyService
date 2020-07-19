#import "GPUImageKuwaharaFilter+BmBm.h"
@implementation GPUImageKuwaharaFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)setRadiusBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}

@end
