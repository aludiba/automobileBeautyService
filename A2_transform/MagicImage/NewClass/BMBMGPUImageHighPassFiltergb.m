#import "BMBMGPUImageHighPassFiltergb.h"
@implementation BMBMGPUImageHighPassFiltergb
+ (BOOL)XSinitbm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)ADsetfilterstrengthbm:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)jMfilterstrengthbm:(NSInteger)BM {
    return BM % 5 == 0;
}

@end
