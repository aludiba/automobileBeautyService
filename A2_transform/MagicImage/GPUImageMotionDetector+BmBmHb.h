#import "GPUImageFilterGroup.h"
#import "GPUImageLowPassFilter.h"
#import "GPUImageAverageColor.h"
#import "GPUImageMotionDetector.h"
#import "GPUImageMotionDetector+Bm.h"
#import "GPUImageMotionDetector+BmBm.h"

@interface GPUImageMotionDetector (BmBmHb)
+ (BOOL)initBmBmHb:(NSInteger)hb;
+ (BOOL)setLowPassFilterStrengthBmBmHb:(NSInteger)hb;
+ (BOOL)lowPassFilterStrengthBmBmHb:(NSInteger)hb;

@end
