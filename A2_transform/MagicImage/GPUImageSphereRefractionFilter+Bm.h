#import "GPUImageFilter.h"
#import "GPUImageSphereRefractionFilter.h"

@interface GPUImageSphereRefractionFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)initWithFragmentShaderFromStringBm:(NSInteger)BM;
+ (BOOL)setInputSizeAtindexBm:(NSInteger)BM;
+ (BOOL)adjustAspectRatioBm:(NSInteger)BM;
+ (BOOL)setInputRotationAtindexBm:(NSInteger)BM;
+ (BOOL)forceProcessingAtSizeBm:(NSInteger)BM;
+ (BOOL)setRadiusBm:(NSInteger)BM;
+ (BOOL)setCenterBm:(NSInteger)BM;
+ (BOOL)setAspectRatioBm:(NSInteger)BM;
+ (BOOL)setRefractiveIndexBm:(NSInteger)BM;

@end
