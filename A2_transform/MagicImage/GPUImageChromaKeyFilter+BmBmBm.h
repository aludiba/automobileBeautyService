#import "GPUImageFilter.h"
#import "GPUImageChromaKeyFilter.h"
#import "GPUImageChromaKeyFilter+Bm.h"
#import "GPUImageChromaKeyFilter+BmBm.h"

@interface GPUImageChromaKeyFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM;
+ (BOOL)setColorToReplaceRedGreenBlueBmBmBm:(NSInteger)BM;
+ (BOOL)setThresholdSensitivityBmBmBm:(NSInteger)BM;
+ (BOOL)setSmoothingBmBmBm:(NSInteger)BM;

@end
