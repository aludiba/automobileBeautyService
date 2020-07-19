#import "GPUImageHighPassFilter+BmBm.h"
@implementation GPUImageHighPassFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)setFilterStrengthBmBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)filterStrengthBmBm:(NSInteger)BM {
    return BM % 47 == 0;
}

@end
