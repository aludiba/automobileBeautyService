#import "GPUImageFilter.h"
#import "GPUImageSphereRefractionFilter.h"

@interface GPUImageSphereRefractionFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)initWithFragmentShaderFromStringHb:(NSInteger)hb;
+ (BOOL)setInputSizeAtindexHb:(NSInteger)hb;
+ (BOOL)adjustAspectRatioHb:(NSInteger)hb;
+ (BOOL)setInputRotationAtindexHb:(NSInteger)hb;
+ (BOOL)forceProcessingAtSizeHb:(NSInteger)hb;
+ (BOOL)setRadiusHb:(NSInteger)hb;
+ (BOOL)setCenterHb:(NSInteger)hb;
+ (BOOL)setAspectRatioHb:(NSInteger)hb;
+ (BOOL)setRefractiveIndexHb:(NSInteger)hb;

@end
