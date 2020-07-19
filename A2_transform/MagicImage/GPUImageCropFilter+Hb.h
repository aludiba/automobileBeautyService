#import "GPUImageFilter.h"
#import "GPUImageCropFilter.h"

@interface GPUImageCropFilter (Hb)
+ (BOOL)initWithCropRegionHb:(NSInteger)hb;
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)setInputSizeAtindexHb:(NSInteger)hb;
+ (BOOL)calculateCropTextureCoordinatesHb:(NSInteger)hb;
+ (BOOL)newFrameReadyAtTimeAtindexHb:(NSInteger)hb;
+ (BOOL)setCropRegionHb:(NSInteger)hb;
+ (BOOL)setInputRotationAtindexHb:(NSInteger)hb;

@end
