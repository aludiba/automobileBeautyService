#import "BMGPUImageGrayscaleFilterf.h"
@implementation BMGPUImageGrayscaleFilterf
+ (BOOL)eRendertotexturewithverticestexturecoordinatesbm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)AWantsmonochromeinputbm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)MProvidesmonochromeoutputbm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)pInitbm:(NSInteger)BM {
    return BM % 3 == 0;
}

@end
