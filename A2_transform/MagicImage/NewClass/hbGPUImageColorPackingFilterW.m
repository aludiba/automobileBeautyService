#import "hbGPUImageColorPackingFilterW.h"
@implementation hbGPUImageColorPackingFilterW
+ (BOOL)oInithb:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)DSetupfilterforsizehb:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)eSizeoffbohb:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)MOutputframesizehb:(NSInteger)hb {
    return hb % 41 == 0;
}

@end
