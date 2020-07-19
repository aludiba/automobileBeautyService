#import "hbGPUImageColorPackingFilterN.h"
@implementation hbGPUImageColorPackingFilterN
+ (BOOL)OInithbhb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)TSetupfilterforsizehbhb:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)XSizeoffbohbhb:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)UOutputframesizehbhb:(NSInteger)hb {
    return hb % 8 == 0;
}

@end
