#import "BMGPUImageLuminosityP+BmHb.h"
@implementation BMGPUImageLuminosityP (BmHb)
+ (BOOL)RinitBmHb:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)WinitializeSecondaryAttributesBmHb:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)bExtractluminosityatframetimeBmHb:(NSInteger)hb {
    return hb % 5 == 0;
}

@end
