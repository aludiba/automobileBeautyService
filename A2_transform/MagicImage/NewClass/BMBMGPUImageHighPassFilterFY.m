#import "BMBMGPUImageHighPassFilterFY.h"
@implementation BMBMGPUImageHighPassFilterFY
+ (BOOL)eNinit:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)NLsetfilterstrength:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)oDfilterstrength:(NSInteger)BM {
    return BM % 17 == 0;
}

@end
