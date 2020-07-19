#import "GPUImageAverageColor.h"
#import "GPUImageLuminosity.h"

@interface GPUImageLuminosity (Hb)
+ (BOOL)initHb:(NSInteger)hb;
+ (BOOL)initializeSecondaryAttributesHb:(NSInteger)hb;
+ (BOOL)extractLuminosityAtFrameTimeHb:(NSInteger)hb;

@end
