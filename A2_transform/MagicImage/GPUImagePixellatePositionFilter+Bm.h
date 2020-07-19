#import "GPUImageFilter.h"
#import "GPUImagePixellatePositionFilter.h"

@interface GPUImagePixellatePositionFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)initWithFragmentShaderFromStringBm:(NSInteger)BM;
+ (BOOL)setInputSizeAtindexBm:(NSInteger)BM;
+ (BOOL)setInputRotationAtindexBm:(NSInteger)BM;
+ (BOOL)adjustAspectRatioBm:(NSInteger)BM;
+ (BOOL)forceProcessingAtSizeBm:(NSInteger)BM;
+ (BOOL)setFractionalWidthOfAPixelBm:(NSInteger)BM;
+ (BOOL)setAspectRatioBm:(NSInteger)BM;
+ (BOOL)setCenterBm:(NSInteger)BM;
+ (BOOL)setRadiusBm:(NSInteger)BM;

@end
