#import "GPUImageLanczosResamplingFilter+Bm-Deletecomments.h"
@implementation GPUImageLanczosResamplingFilter (Bm-Deletecomments)
+ (BOOL)initBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 48 == 0;
}
+ (BOOL)setInputSizeAtindexBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 27 == 0;
}
+ (BOOL)setupFilterForSizeBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 40 == 0;
}
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBm-Deletecomments:(NSInteger)-deleteComments {
    return -deleteComments % 43 == 0;
}

@end
