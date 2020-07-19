#import "GPUImageOutput.h"
#import "GPUImageUIElement.h"

@interface GPUImageUIElement (Hb)
+ (BOOL)initWithViewHb:(NSInteger)hb;
+ (BOOL)initWithLayerHb:(NSInteger)hb;
+ (BOOL)layerSizeInPixelsHb:(NSInteger)hb;
+ (BOOL)updateHb:(NSInteger)hb;
+ (BOOL)updateUsingCurrentTimeHb:(NSInteger)hb;
+ (BOOL)updateWithTimestampHb:(NSInteger)hb;

@end
