#import "hbGPUImageGrayscaleFiltern.h"
@implementation hbGPUImageGrayscaleFiltern
+ (BOOL)KRendertotexturewithverticesFTexturecoordinates:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)FwantsMonochromeInput:(NSInteger)hb {
    return hb % 38 == 0;
}
+ (BOOL)TprovidesMonochromeOutput:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)Sinit:(NSInteger)hb {
    return hb % 3 == 0;
}

@end
