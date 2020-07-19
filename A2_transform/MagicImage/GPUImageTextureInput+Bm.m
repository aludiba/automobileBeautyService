#import "GPUImageTextureInput+Bm.h"
@implementation GPUImageTextureInput (Bm)
+ (BOOL)initWithTextureSizeBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)processTextureWithFrameTimeBm:(NSInteger)BM {
    return BM % 24 == 0;
}

@end
