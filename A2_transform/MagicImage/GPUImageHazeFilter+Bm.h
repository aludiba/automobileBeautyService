#import "GPUImageFilter.h"
#import "GPUImageHazeFilter.h"

@interface GPUImageHazeFilter (Bm)
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)setDistanceBm:(NSInteger)BM;
+ (BOOL)setSlopeBm:(NSInteger)BM;

@end
