#import "GPUImageHighPassFilter+BmBmBm.h"
@implementation GPUImageHighPassFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)setFilterStrengthBmBmBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)filterStrengthBmBmBm:(NSInteger)BM {
    return BM % 40 == 0;
}

@end
