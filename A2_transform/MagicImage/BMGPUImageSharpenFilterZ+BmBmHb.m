#import "BMGPUImageSharpenFilterZ+BmBmHb.h"
@implementation BMGPUImageSharpenFilterZ (BmBmHb)
+ (BOOL)QinitBmBmHb:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)cSetupfilterforsizeBmBmHb:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)tSetsharpnessBmBmHb:(NSInteger)hb {
    return hb % 19 == 0;
}

@end
