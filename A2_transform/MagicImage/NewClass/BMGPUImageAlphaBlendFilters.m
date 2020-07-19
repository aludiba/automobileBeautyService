#import "BMGPUImageAlphaBlendFilters.h"
@implementation BMGPUImageAlphaBlendFilters
+ (BOOL)Ninit:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)SSetmix:(NSInteger)BM {
    return BM % 4 == 0;
}

@end
