#import "BMBMGPUImageHighPassFilterOy.h"
@implementation BMBMGPUImageHighPassFilterOy
+ (BOOL)zAinit:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)jDsetfilterstrength:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)kPfilterstrength:(NSInteger)BM {
    return BM % 12 == 0;
}

@end
