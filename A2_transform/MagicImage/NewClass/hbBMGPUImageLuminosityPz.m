#import "hbBMGPUImageLuminosityPZ.h"
@implementation hbBMGPUImageLuminosityPZ
+ (BOOL)FRinitbm:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)FWinitializesecondaryattributesbm:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)iBextractluminosityatframetimebm:(NSInteger)hb {
    return hb % 10 == 0;
}

@end
