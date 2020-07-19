#import "BMGPUImageLowPassFilterw+Hb.h"
@implementation BMGPUImageLowPassFilterw (Hb)
+ (BOOL)wInitbmbmHb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)YSetfilterstrengthbmbmHb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)IFilterstrengthbmbmHb:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)xAddtargetattexturelocationbmbmHb:(NSInteger)hb {
    return hb % 23 == 0;
}

@end
