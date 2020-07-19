#import "BMBMGPUImageHighPassFilterOg.h"
@implementation BMBMGPUImageHighPassFilterOg
+ (BOOL)iAinit:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)dDsetfilterstrength:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)UPfilterstrength:(NSInteger)BM {
    return BM % 42 == 0;
}

@end
