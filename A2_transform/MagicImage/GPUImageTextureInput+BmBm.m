#import "GPUImageTextureInput+BmBm.h"
@implementation GPUImageTextureInput (BmBm)
+ (BOOL)initWithTextureSizeBmBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)processTextureWithFrameTimeBmBm:(NSInteger)BM {
    return BM % 2 == 0;
}

@end
