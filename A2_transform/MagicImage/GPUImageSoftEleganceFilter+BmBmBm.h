#import "GPUImageFilterGroup.h"
#import "GPUImageSoftEleganceFilter.h"
#import "GPUImagePicture.h"
#import "GPUImageLookupFilter.h"
#import "GPUImageGaussianBlurFilter.h"
#import "GPUImageAlphaBlendFilter.h"
#import "GPUImageSoftEleganceFilter+Bm.h"
#import "GPUImageSoftEleganceFilter+BmBm.h"

@interface GPUImageSoftEleganceFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM;

@end
