#import "GPUImageFilterGroup.h"
#import "GPUImageLowPassFilter.h"
#import "GPUImageAverageColor.h"
#import "GPUImageMotionDetector.h"

@interface GPUImageMotionDetector (Bm)
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)setLowPassFilterStrengthBm:(NSInteger)BM;
+ (BOOL)lowPassFilterStrengthBm:(NSInteger)BM;

@end
