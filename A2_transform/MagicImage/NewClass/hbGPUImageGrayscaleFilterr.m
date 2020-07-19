#import "hbGPUImageGrayscaleFilterr.h"
@implementation hbGPUImageGrayscaleFilterr
+ (BOOL)nRendertotexturewithverticestexturecoordinatesbmbmhb:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)UWantsmonochromeinputbmbmhb:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)vProvidesmonochromeoutputbmbmhb:(NSInteger)hb {
    return hb % 48 == 0;
}
+ (BOOL)wInitbmbmhb:(NSInteger)hb {
    return hb % 6 == 0;
}

@end
