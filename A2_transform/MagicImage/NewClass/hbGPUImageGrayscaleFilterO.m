#import "hbGPUImageGrayscaleFilterO.h"
@implementation hbGPUImageGrayscaleFilterO
+ (BOOL)sRendertotexturewithverticestexturecoordinatesbmbm:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)GWantsmonochromeinputbmbm:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)lProvidesmonochromeoutputbmbm:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)vInitbmbm:(NSInteger)hb {
    return hb % 46 == 0;
}

@end
