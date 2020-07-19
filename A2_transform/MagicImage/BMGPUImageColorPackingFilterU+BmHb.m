#import "BMGPUImageColorPackingFilterU+BmHb.h"
@implementation BMGPUImageColorPackingFilterU (BmHb)
+ (BOOL)yinitBmHb:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)xSetupfilterforsizeBmHb:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)psizeOfFBOBmHb:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)koutputFrameSizeBmHb:(NSInteger)hb {
    return hb % 40 == 0;
}

@end
