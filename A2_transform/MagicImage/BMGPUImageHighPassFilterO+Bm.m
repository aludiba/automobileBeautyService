#import "BMGPUImageHighPassFilterO+Bm.h"
@implementation BMGPUImageHighPassFilterO (Bm)
+ (BOOL)AinitBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)DSetfilterstrengthBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)pfilterStrengthBm:(NSInteger)BM {
    return BM % 14 == 0;
}

@end
