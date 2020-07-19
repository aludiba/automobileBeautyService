#import "BMGPUImageHighPassFilterF+Bm.h"
@implementation BMGPUImageHighPassFilterF (Bm)
+ (BOOL)NinitBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)lSetfilterstrengthBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)dfilterStrengthBm:(NSInteger)BM {
    return BM % 33 == 0;
}

@end
