#import "BMGPUImageSharpenFilterZ+BmHb.h"
@implementation BMGPUImageSharpenFilterZ (BmHb)
+ (BOOL)QinitBmHb:(NSInteger)hb {
    return hb % 50 == 0;
}
+ (BOOL)cSetupfilterforsizeBmHb:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)tSetsharpnessBmHb:(NSInteger)hb {
    return hb % 4 == 0;
}

@end
