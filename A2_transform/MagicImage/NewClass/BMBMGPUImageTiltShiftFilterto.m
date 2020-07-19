#import "BMBMGPUImageTiltShiftFilterto.h"
@implementation BMBMGPUImageTiltShiftFilterto
+ (BOOL)DJinit:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)ZFsetblurradiusinpixels:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)wTblurradiusinpixels:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)RNsettopfocuslevel:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)HNsetbottomfocuslevel:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)zYsetfocusfalloffrate:(NSInteger)BM {
    return BM % 45 == 0;
}

@end
