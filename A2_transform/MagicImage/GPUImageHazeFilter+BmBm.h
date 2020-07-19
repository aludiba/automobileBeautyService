#import "GPUImageFilter.h"
#import "GPUImageHazeFilter.h"
#import "GPUImageHazeFilter+Bm.h"

@interface GPUImageHazeFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)setDistanceBmBm:(NSInteger)BM;
+ (BOOL)setSlopeBmBm:(NSInteger)BM;

@end
