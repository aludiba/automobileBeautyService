#import "GPUImageFilterGroup.h"
#import "GPUImageLowPassFilter.h"
#import "GPUImageAverageColor.h"
#import "GPUImageMotionDetector.h"
#import "GPUImageMotionDetector+Bm.h"

@interface GPUImageMotionDetector (BmHb)
+ (BOOL)initBmHb:(NSInteger)hb;
+ (BOOL)setLowPassFilterStrengthBmHb:(NSInteger)hb;
+ (BOOL)lowPassFilterStrengthBmHb:(NSInteger)hb;

@end
