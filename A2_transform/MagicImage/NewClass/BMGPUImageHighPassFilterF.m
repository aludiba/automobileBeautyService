#import "BMGPUImageHighPassFilterF.h"
@implementation BMGPUImageHighPassFilterF
+ (BOOL)Ninit:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)lSetfilterstrength:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)dfilterStrength:(NSInteger)BM {
    return BM % 13 == 0;
}

@end
