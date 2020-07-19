#import "BMGPUImageGrayscaleFilterf+Bm.h"
@implementation BMGPUImageGrayscaleFilterf (Bm)
+ (BOOL)eRendertotexturewithverticestexturecoordinatesbmBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)AWantsmonochromeinputbmBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)MProvidesmonochromeoutputbmBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)pInitbmBm:(NSInteger)BM {
    return BM % 4 == 0;
}

@end
