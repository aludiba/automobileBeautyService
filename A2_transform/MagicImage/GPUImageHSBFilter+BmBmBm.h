#import "GPUImageColorMatrixFilter.h"
#import "GPUImageHSBFilter.h"
#import "GPUImageHSBFilter+Bm.h"
#import "GPUImageHSBFilter+BmBm.h"

@interface GPUImageHSBFilter (BmBmBm)
+ (BOOL)initBmBmBm:(NSInteger)BM;
+ (BOOL)resetBmBmBm:(NSInteger)BM;
+ (BOOL)rotateHueBmBmBm:(NSInteger)BM;
+ (BOOL)adjustSaturationBmBmBm:(NSInteger)BM;
+ (BOOL)adjustBrightnessBmBmBm:(NSInteger)BM;
+ (BOOL)_updateColorMatrixBmBmBm:(NSInteger)BM;
+ (BOOL)0BmBmBm:(NSInteger)BM;

@end
