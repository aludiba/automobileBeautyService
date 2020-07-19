#import "GPUImageFilter.h"
#import "GPUImageCropFilter.h"
#import "GPUImageCropFilter+Bm.h"
#import "GPUImageCropFilter+BmBm.h"

@interface GPUImageCropFilter (BmBmHb)
+ (BOOL)initWithCropRegionBmBmHb:(NSInteger)hb;
+ (BOOL)initBmBmHb:(NSInteger)hb;
+ (BOOL)setInputSizeAtindexBmBmHb:(NSInteger)hb;
+ (BOOL)calculateCropTextureCoordinatesBmBmHb:(NSInteger)hb;
+ (BOOL)newFrameReadyAtTimeAtindexBmBmHb:(NSInteger)hb;
+ (BOOL)setCropRegionBmBmHb:(NSInteger)hb;
+ (BOOL)setInputRotationAtindexBmBmHb:(NSInteger)hb;

@end
