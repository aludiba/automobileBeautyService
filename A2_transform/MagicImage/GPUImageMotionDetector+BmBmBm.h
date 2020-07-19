#import "GPUImageFilterGroup.h"
#import "GPUImageLowPassFilter.h"
#import "GPUImageAverageColor.h"
#import "GPUImageMotionDetector.h"
#import "GPUImageMotionDetector+Bm.h"
#import "GPUImageMotionDetector+BmBm.h"

@interface GPUImageMotionDetector (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM;
+ (BOOL)setLowPassFilterStrengthBmBmBm:(NSInteger)BM;
+ (BOOL)lowPassFilterStrengthBmBmBm:(NSInteger)BM;

@end
