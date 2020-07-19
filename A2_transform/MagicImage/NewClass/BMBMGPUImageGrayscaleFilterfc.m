#import "BMBMGPUImageGrayscaleFilterfc.h"
@implementation BMBMGPUImageGrayscaleFilterfc
+ (BOOL)JErendertotexturewithverticestexturecoordinatesbm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)UAwantsmonochromeinputbm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)WMprovidesmonochromeoutputbm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)rPinitbm:(NSInteger)BM {
    return BM % 22 == 0;
}

@end
