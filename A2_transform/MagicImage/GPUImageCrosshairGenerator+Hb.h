#import "GPUImageFilter.h"
#import "GPUImageCrosshairGenerator.h"

@interface GPUImageCrosshairGenerator (Hb)
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)renderCrosshairsFromArrayCountFrametimeHb:(NSInteger)hb;
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesHb:(NSInteger)hb;
+ (BOOL)setCrosshairWidthHb:(NSInteger)hb;
+ (BOOL)setCrosshairColorRedGreenBlueHb:(NSInteger)hb;

@end
