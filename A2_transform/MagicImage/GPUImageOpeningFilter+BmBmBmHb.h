#import "GPUImageFilterGroup.h"
#import "GPUImageOpeningFilter.h"
#import "GPUImageErosionFilter.h"
#import "GPUImageDilationFilter.h"
#import "GPUImageOpeningFilter+Bm.h"
#import "GPUImageOpeningFilter+BmBm.h"
#import "GPUImageOpeningFilter+BmBmBm.h"

@interface GPUImageOpeningFilter (BmBmBmHb)
+ (BOOL)initBmBmBmHb:(NSInteger)hb;
+ (BOOL)initWithRadiusBmBmBmHb:(NSInteger)hb;
+ (BOOL)setVerticalTexelSpacingBmBmBmHb:(NSInteger)hb;
+ (BOOL)setHorizontalTexelSpacingBmBmBmHb:(NSInteger)hb;

@end
