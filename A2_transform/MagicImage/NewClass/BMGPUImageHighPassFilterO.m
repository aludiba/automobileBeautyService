#import "BMGPUImageHighPassFilterO.h"
@implementation BMGPUImageHighPassFilterO
+ (BOOL)Ainit:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)DSetfilterstrength:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)pfilterStrength:(NSInteger)BM {
    return BM % 21 == 0;
}

@end
