#import "GPUImageFilter.h"
#import "GPUImageHazeFilter.h"

@interface GPUImageHazeFilter (Hb)
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)setDistanceHb:(NSInteger)hb;
+ (BOOL)setSlopeHb:(NSInteger)hb;

@end
