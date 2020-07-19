#import "BMGPUImageColorPackingFiltert+BmHb.h"
@implementation BMGPUImageColorPackingFiltert (BmHb)
+ (BOOL)IInitbmbmBmHb:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)USetupfilterforsizebmbmBmHb:(NSInteger)hb {
    return hb % 12 == 0;
}
+ (BOOL)DSizeoffbobmbmBmHb:(NSInteger)hb {
    return hb % 45 == 0;
}
+ (BOOL)eOutputframesizebmbmBmHb:(NSInteger)hb {
    return hb % 8 == 0;
}

@end
