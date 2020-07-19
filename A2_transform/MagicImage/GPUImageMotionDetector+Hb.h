#import "GPUImageFilterGroup.h"
#import "GPUImageLowPassFilter.h"
#import "GPUImageAverageColor.h"
#import "GPUImageMotionDetector.h"

@interface GPUImageMotionDetector (Hb)
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)setLowPassFilterStrengthHb:(NSInteger)hb;
+ (BOOL)lowPassFilterStrengthHb:(NSInteger)hb;

@end
