#import "GPUImageAverageColor.h"
#import "GPUImageLuminosity.h"
#import "GPUImageLuminosity+Bm.h"
#import "GPUImageLuminosity+BmBm.h"

@interface GPUImageLuminosity (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM;
+ (BOOL)initializeSecondaryAttributesBmBmBm:(NSInteger)BM;
+ (BOOL)extractLuminosityAtFrameTimeBmBmBm:(NSInteger)BM;

@end
