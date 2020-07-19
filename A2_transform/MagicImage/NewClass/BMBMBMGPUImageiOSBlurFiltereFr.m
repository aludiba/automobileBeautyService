#import "BMBMBMGPUImageiOSBlurFiltereFr.h"
@implementation BMBMBMGPUImageiOSBlurFiltereFr
+ (BOOL)PLvinit:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)uJdsetinputsizeuatindex:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)mKmsetblurradiusinpixels:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)rKtblurradiusinpixels:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)MNzsetsaturation:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)NUssaturation:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)RLqsetdownsampling:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)rPxsetrangereductionfactor:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)MImrangereductionfactor:(NSInteger)BM {
    return BM % 26 == 0;
}

@end
