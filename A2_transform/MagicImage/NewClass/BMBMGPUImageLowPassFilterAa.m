#import "BMBMGPUImageLowPassFilterAa.h"
@implementation BMBMGPUImageLowPassFilterAa
+ (BOOL)ANinit:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)bOsetfilterstrength:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)SBfilterstrength:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)kZaddtargetkattexturelocation:(NSInteger)BM {
    return BM % 34 == 0;
}

@end
