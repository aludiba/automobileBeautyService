#import "GPUImageAverageColor.h"
#import "GPUImageLuminosity.h"

@interface GPUImageLuminosity (Bm)
+ (BOOL)initBm:(NSInteger)BM;
+ (BOOL)initializeSecondaryAttributesBm:(NSInteger)BM;
+ (BOOL)extractLuminosityAtFrameTimeBm:(NSInteger)BM;

@end
