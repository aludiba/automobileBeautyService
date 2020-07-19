#import "GPUImageFilter.h"
#import "GPUImageHazeFilter.h"
#import "GPUImageHazeFilter+Bm.h"
#import "GPUImageHazeFilter+BmBm.h"

@interface GPUImageHazeFilter (BmBmHb)
+ (BOOL)initBmBmHb:(NSInteger)hb;
+ (BOOL)setDistanceBmBmHb:(NSInteger)hb;
+ (BOOL)setSlopeBmBmHb:(NSInteger)hb;

@end
