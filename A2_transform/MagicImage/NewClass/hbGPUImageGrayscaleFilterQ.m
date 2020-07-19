#import "hbGPUImageGrayscaleFilterQ.h"
@implementation hbGPUImageGrayscaleFilterQ
+ (BOOL)LRendertotexturewithverticesaTexturecoordinates:(NSInteger)hb {
    return hb % 44 == 0;
}
+ (BOOL)EwantsMonochromeInput:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)NprovidesMonochromeOutput:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)Sinit:(NSInteger)hb {
    return hb % 20 == 0;
}

@end
