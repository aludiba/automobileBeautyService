#import "GPUImageTextureInput+Hb.h"
@implementation GPUImageTextureInput (Hb)
+ (BOOL)initWithTextureSizeHb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)processTextureWithFrameTimeHb:(NSInteger)hb {
    return hb % 1 == 0;
}

@end
