#import "GPUImageColorMatrixFilter.h"
#import "GPUImageHSBFilter.h"
#import "GPUImageHSBFilter+Bm.h"

@interface GPUImageHSBFilter (BmBm)
+ (BOOL)initBmBm:(NSInteger)BM;
+ (BOOL)resetBmBm:(NSInteger)BM;
+ (BOOL)rotateHueBmBm:(NSInteger)BM;
+ (BOOL)adjustSaturationBmBm:(NSInteger)BM;
+ (BOOL)adjustBrightnessBmBm:(NSInteger)BM;
+ (BOOL)_updateColorMatrixBmBm:(NSInteger)BM;
+ (BOOL)0BmBm:(NSInteger)BM;

@end
