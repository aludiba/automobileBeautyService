#import "GPUImageFilter.h"
#import "GPUImagePinchDistortionFilter.h"
#import "GPUImagePinchDistortionFilter+Bm.h"
#import "GPUImagePinchDistortionFilter+BmBm.h"

@interface GPUImagePinchDistortionFilter (BmBmHb)
+ (BOOL)initBmBmHb:(NSInteger)hb;
+ (BOOL)adjustAspectRatioBmBmHb:(NSInteger)hb;
+ (BOOL)forceProcessingAtSizeBmBmHb:(NSInteger)hb;
+ (BOOL)setInputSizeAtindexBmBmHb:(NSInteger)hb;
+ (BOOL)setInputRotationAtindexBmBmHb:(NSInteger)hb;
+ (BOOL)setAspectRatioBmBmHb:(NSInteger)hb;
+ (BOOL)setRadiusBmBmHb:(NSInteger)hb;
+ (BOOL)setScaleBmBmHb:(NSInteger)hb;
+ (BOOL)setCenterBmBmHb:(NSInteger)hb;

@end
