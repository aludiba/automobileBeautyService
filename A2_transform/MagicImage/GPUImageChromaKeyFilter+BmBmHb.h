#import "GPUImageFilter.h"
#import "GPUImageChromaKeyFilter.h"
#import "GPUImageChromaKeyFilter+Bm.h"
#import "GPUImageChromaKeyFilter+BmBm.h"

@interface GPUImageChromaKeyFilter (BmBmHb)
+ (BOOL)initBmBmHb:(NSInteger)hb;
+ (BOOL)setColorToReplaceRedGreenBlueBmBmHb:(NSInteger)hb;
+ (BOOL)setThresholdSensitivityBmBmHb:(NSInteger)hb;
+ (BOOL)setSmoothingBmBmHb:(NSInteger)hb;

@end
