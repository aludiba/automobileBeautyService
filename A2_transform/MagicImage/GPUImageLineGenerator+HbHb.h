#import "GPUImageFilter.h"
#import "GPUImageLineGenerator.h"
#import "GPUImageLineGenerator+Hb.h"

@interface GPUImageLineGenerator (HbHb)
+ (BOOL)initHbHb:(NSInteger)hb;
+ (BOOL)deallocHbHb:(NSInteger)hb;
+ (BOOL)generateLineCoordinatesHbHb:(NSInteger)hb;
+ (BOOL)renderLinesFromArrayCountFrametimeHbHb:(NSInteger)hb;
+ (BOOL)renderToTextureWithVerticesTexturecoordinatesHbHb:(NSInteger)hb;
+ (BOOL)setLineWidthHbHb:(NSInteger)hb;
+ (BOOL)setLineColorRedGreenBlueHbHb:(NSInteger)hb;

@end
