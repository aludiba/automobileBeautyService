#import "GPUImageFilter.h"
#import "GPUImagePixellateFilter.h"

@interface GPUImagePixellateFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)initWithFragmentShaderFromStringBm:(NSInteger)BM;
+ (BOOL)adjustAspectRatioBm:(NSInteger)BM;
+ (BOOL)setInputRotationAtindexBm:(NSInteger)BM;
+ (BOOL)forceProcessingAtSizeBm:(NSInteger)BM;
+ (BOOL)setInputSizeAtindexBm:(NSInteger)BM;
+ (BOOL)setFractionalWidthOfAPixelBm:(NSInteger)BM;
+ (BOOL)setAspectRatioBm:(NSInteger)BM;

@end
