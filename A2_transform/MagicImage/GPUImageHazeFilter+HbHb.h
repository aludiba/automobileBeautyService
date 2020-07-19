#import "GPUImageFilter.h"
#import "GPUImageHazeFilter.h"
#import "GPUImageHazeFilter+Hb.h"

@interface GPUImageHazeFilter (HbHb)
+ (BOOL)initHbHb:(NSInteger)hb;
+ (BOOL)setDistanceHbHb:(NSInteger)hb;
+ (BOOL)setSlopeHbHb:(NSInteger)hb;

@end
