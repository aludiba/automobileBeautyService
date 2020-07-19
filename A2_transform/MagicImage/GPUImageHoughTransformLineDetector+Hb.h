#import "GPUImageFilterGroup.h"
#import "GPUImageThresholdEdgeDetectionFilter.h"
#import "GPUImageParallelCoordinateLineTransformFilter.h"
#import "GPUImageThresholdedNonMaximumSuppressionFilter.h"
#import "GPUImageCannyEdgeDetectionFilter.h"
#import "GPUImageHoughTransformLineDetector.h"

@interface GPUImageHoughTransformLineDetector (Hb)
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)deallocHb:(NSInteger)hb;
+ (BOOL)extractLineParametersFromImageAtFrameTimeHb:(NSInteger)hb;
+ (BOOL)wantsMonochromeInputHb:(NSInteger)hb;
+ (BOOL)setLineDetectionThresholdHb:(NSInteger)hb;
+ (BOOL)lineDetectionThresholdHb:(NSInteger)hb;
+ (BOOL)newFrameReadyAtTimeAtindexHb:(NSInteger)hb;

@end
