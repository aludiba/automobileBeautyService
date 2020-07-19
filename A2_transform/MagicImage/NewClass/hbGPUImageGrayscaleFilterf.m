#import "hbGPUImageGrayscaleFilterf.h"
@implementation hbGPUImageGrayscaleFilterf
+ (BOOL)eRendertotexturewithverticestexturecoordinatesbm:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)TWantsmonochromeinputbm:(NSInteger)hb {
    return hb % 2 == 0;
}
+ (BOOL)YProvidesmonochromeoutputbm:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)DInitbm:(NSInteger)hb {
    return hb % 14 == 0;
}

@end
