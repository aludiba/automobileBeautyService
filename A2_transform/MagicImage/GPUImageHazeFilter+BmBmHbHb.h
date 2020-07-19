#import "GPUImageFilter.h"
#import "GPUImageHazeFilter.h"
#import "GPUImageHazeFilter+Bm.h"
#import "GPUImageHazeFilter+BmBm.h"
#import "GPUImageHazeFilter+BmBmHb.h"

@interface GPUImageHazeFilter (BmBmHbHb)
+ (BOOL)initBmBmHbHb:(NSInteger)hb;
+ (BOOL)setDistanceBmBmHbHb:(NSInteger)hb;
+ (BOOL)setSlopeBmBmHbHb:(NSInteger)hb;

@end
