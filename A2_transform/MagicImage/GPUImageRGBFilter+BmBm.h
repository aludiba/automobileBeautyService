#import "GPUImageFilter.h"
#import "GPUImageRGBFilter.h"
#import "GPUImageRGBFilter+Bm.h"

@interface GPUImageRGBFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)setRedBmBm:(NSInteger)BM;
+ (BOOL)setGreenBmBm:(NSInteger)BM;
+ (BOOL)setBlueBmBm:(NSInteger)BM;

@end
