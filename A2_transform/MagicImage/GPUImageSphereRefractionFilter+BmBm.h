#import "GPUImageFilter.h"
#import "GPUImageSphereRefractionFilter.h"
#import "GPUImageSphereRefractionFilter+Bm.h"

@interface GPUImageSphereRefractionFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)initWithFragmentShaderFromStringBmBm:(NSInteger)BM;
+ (BOOL)setInputSizeAtindexBmBm:(NSInteger)BM;
+ (BOOL)adjustAspectRatioBmBm:(NSInteger)BM;
+ (BOOL)setInputRotationAtindexBmBm:(NSInteger)BM;
+ (BOOL)forceProcessingAtSizeBmBm:(NSInteger)BM;
+ (BOOL)setRadiusBmBm:(NSInteger)BM;
+ (BOOL)setCenterBmBm:(NSInteger)BM;
+ (BOOL)setAspectRatioBmBm:(NSInteger)BM;
+ (BOOL)setRefractiveIndexBmBm:(NSInteger)BM;

@end
