#import "GPUImageTwoPassTextureSamplingFilter.h"
#import "GPUImageLanczosResamplingFilter.h"
#import "GPUImageLanczosResamplingFilter+Bm.h"

@interface GPUImageLanczosResamplingFilter (Bm-Deletecomments)
+ (BOOL)initBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setInputSizeAtindexBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setupFilterForSizeBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesBm-Deletecomments:(NSInteger)-deleteComments;

@end
