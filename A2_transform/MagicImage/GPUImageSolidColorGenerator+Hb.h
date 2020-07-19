#import "GPUImageFilter.h"
#import "GPUImageSolidColorGenerator.h"

@interface GPUImageSolidColorGenerator (Hb)
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesHb:(NSInteger)hb;
+ (BOOL)forceProcessingAtSizeHb:(NSInteger)hb;
+ (BOOL)addTargetAttexturelocationHb:(NSInteger)hb;
+ (BOOL)setColorHb:(NSInteger)hb;
+ (BOOL)setColorRedGreenBlueAlphaHb:(NSInteger)hb;
+ (BOOL)setUseExistingAlphaHb:(NSInteger)hb;

@end
