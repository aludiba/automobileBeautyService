#import "BMGPUImageHighPassFilterO+BmBm.h"
@implementation BMGPUImageHighPassFilterO (BmBm)
+ (BOOL)AinitBmBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)DSetfilterstrengthBmBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)pfilterStrengthBmBm:(NSInteger)BM {
    return BM % 14 == 0;
}

@end
