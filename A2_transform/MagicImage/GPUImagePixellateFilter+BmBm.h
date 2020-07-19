#import "GPUImageFilter.h"
#import "GPUImagePixellateFilter.h"
#import "GPUImagePixellateFilter+Bm.h"

@interface GPUImagePixellateFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)initWithFragmentShaderFromStringBmBm:(NSInteger)BM;
+ (BOOL)adjustAspectRatioBmBm:(NSInteger)BM;
+ (BOOL)setInputRotationAtindexBmBm:(NSInteger)BM;
+ (BOOL)forceProcessingAtSizeBmBm:(NSInteger)BM;
+ (BOOL)setInputSizeAtindexBmBm:(NSInteger)BM;
+ (BOOL)setFractionalWidthOfAPixelBmBm:(NSInteger)BM;
+ (BOOL)setAspectRatioBmBm:(NSInteger)BM;

@end
