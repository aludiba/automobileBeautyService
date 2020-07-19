#import "BMBMGPUImageLowPassFilterDi.h"
@implementation BMBMGPUImageLowPassFilterDi
+ (BOOL)qPinit:(NSInteger)BM {
    return BM % 47 == 0;
}
+ (BOOL)cPsetfilterstrength:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)LWfilterstrength:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)HTaddtargetjattexturelocation:(NSInteger)BM {
    return BM % 23 == 0;
}

@end
