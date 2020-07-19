#import "GPUImageFilter.h"
#import "GPUImagePixellatePositionFilter.h"
#import "GPUImagePixellatePositionFilter+Bm.h"

@interface GPUImagePixellatePositionFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)initWithFragmentShaderFromStringBmBm:(NSInteger)BM;
+ (BOOL)setInputSizeAtindexBmBm:(NSInteger)BM;
+ (BOOL)setInputRotationAtindexBmBm:(NSInteger)BM;
+ (BOOL)adjustAspectRatioBmBm:(NSInteger)BM;
+ (BOOL)forceProcessingAtSizeBmBm:(NSInteger)BM;
+ (BOOL)setFractionalWidthOfAPixelBmBm:(NSInteger)BM;
+ (BOOL)setAspectRatioBmBm:(NSInteger)BM;
+ (BOOL)setCenterBmBm:(NSInteger)BM;
+ (BOOL)setRadiusBmBm:(NSInteger)BM;

@end
