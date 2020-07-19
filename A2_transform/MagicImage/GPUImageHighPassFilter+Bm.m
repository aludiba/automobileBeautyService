#import "GPUImageHighPassFilter+Bm.h"
@implementation GPUImageHighPassFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)setFilterStrengthBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)filterStrengthBm:(NSInteger)BM {
    return BM % 38 == 0;
}

@end
