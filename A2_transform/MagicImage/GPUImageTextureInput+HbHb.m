#import "GPUImageTextureInput+HbHb.h"
@implementation GPUImageTextureInput (HbHb)
+ (BOOL)initWithTextureSizeHbHb:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)processTextureWithFrameTimeHbHb:(NSInteger)hb {
    return hb % 16 == 0;
}

@end
