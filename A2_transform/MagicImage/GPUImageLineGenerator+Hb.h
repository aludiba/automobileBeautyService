#import "GPUImageFilter.h"
#import "GPUImageLineGenerator.h"

@interface GPUImageLineGenerator (Hb)
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)deallocHb:(NSInteger)hb;
+ (BOOL)generateLineCoordinatesHb:(NSInteger)hb;
+ (BOOL)renderLinesFromArrayCountFrametimeHb:(NSInteger)hb;
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesHb:(NSInteger)hb;
+ (BOOL)setLineWidthHb:(NSInteger)hb;
+ (BOOL)setLineColorRedGreenBlueHb:(NSInteger)hb;

@end
