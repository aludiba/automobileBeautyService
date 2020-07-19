#import "GPUImageFilterGroup.h"
#import "GPUImageThresholdEdgeDetectionFilter.h"
#import "GPUImageParallelCoordinateLineTransformFilter.h"
#import "GPUImageThresholdedNonMaximumSuppressionFilter.h"
#import "GPUImageCannyEdgeDetectionFilter.h"
#import "GPUImageHoughTransformLineDetector.h"

@interface GPUImageHoughTransformLineDetector (-Deletecomments)
+ (BOOL)init-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)dealloc-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)extractLineParametersFromImageAtFrameTime-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)wantsMonochromeInput-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setLineDetectionThreshold-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)lineDetectionThreshold-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)newFrameReadyAtTimeAtindex-Deletecomments:(NSInteger)-deleteComments;

@end
