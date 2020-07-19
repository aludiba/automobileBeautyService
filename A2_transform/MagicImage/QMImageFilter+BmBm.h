#import <GPUImage/GPUImage.h>
#import "QMFilterModel.h"
#import "QMImageFilter.h"
#import "QMImageFilter+Bm.h"

@interface QMImageFilter (BmBm)
+ (BOOL)initWithFilterModelBmBm:(NSInteger)BM;
+ (BOOL)bindQMTextureBmBm:(NSInteger)BM;
+ (BOOL)setAlphaBmBm:(NSInteger)BM;

@end
