#import "BMBMGPUImageLuminosityPk.h"
@implementation BMBMGPUImageLuminosityPk
+ (BOOL)nRinit:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)IWinitializesecondaryattributes:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)dBextractluminosityatframetime:(NSInteger)BM {
    return BM % 7 == 0;
}

@end
