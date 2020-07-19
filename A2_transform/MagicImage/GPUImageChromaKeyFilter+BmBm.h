#import "GPUImageFilter.h"
#import "GPUImageChromaKeyFilter.h"
#import "GPUImageChromaKeyFilter+Bm.h"

@interface GPUImageChromaKeyFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)setColorToReplaceRedGreenBlueBmBm:(NSInteger)BM;
+ (BOOL)setThresholdSensitivityBmBm:(NSInteger)BM;
+ (BOOL)setSmoothingBmBm:(NSInteger)BM;

@end
