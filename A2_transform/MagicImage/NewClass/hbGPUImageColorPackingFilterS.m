#import "hbGPUImageColorPackingFilterS.h"
@implementation hbGPUImageColorPackingFilterS
+ (BOOL)TInithb:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)uSetupfilterforsizehb:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)FSizeoffbohb:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)XOutputframesizehb:(NSInteger)hb {
    return hb % 3 == 0;
}

@end
