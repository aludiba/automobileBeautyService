#import "GPUImageAverageColor.h"
#import "GPUImageLuminosity.h"
#import "GPUImageLuminosity+Bm.h"

@interface GPUImageLuminosity (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)initializeSecondaryAttributesBmBm:(NSInteger)BM;
+ (BOOL)extractLuminosityAtFrameTimeBmBm:(NSInteger)BM;

@end
