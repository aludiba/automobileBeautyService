#import "GPUImageFilterGroup.h"
#import "GPUImageLowPassFilter.h"
#import "GPUImageAverageColor.h"
#import "GPUImageMotionDetector.h"
#import "GPUImageMotionDetector+Bm.h"

@interface GPUImageMotionDetector (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)setLowPassFilterStrengthBmBm:(NSInteger)BM;
+ (BOOL)lowPassFilterStrengthBmBm:(NSInteger)BM;

@end
