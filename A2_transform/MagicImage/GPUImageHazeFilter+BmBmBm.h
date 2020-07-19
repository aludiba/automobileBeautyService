#import "GPUImageFilter.h"
#import "GPUImageHazeFilter.h"
#import "GPUImageHazeFilter+Bm.h"
#import "GPUImageHazeFilter+BmBm.h"

@interface GPUImageHazeFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM;
+ (BOOL)setDistanceBmBmBm:(NSInteger)BM;
+ (BOOL)setSlopeBmBmBm:(NSInteger)BM;

@end
