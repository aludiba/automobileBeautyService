#import "BMBMGPUImageHighPassFilterOg+Bm.h"
@implementation BMBMGPUImageHighPassFilterOg (Bm)
+ (BOOL)iAinitBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)dDsetfilterstrengthBm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)UPfilterstrengthBm:(NSInteger)BM {
    return BM % 47 == 0;
}

@end
