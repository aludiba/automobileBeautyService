#import <GPUImage/GPUImage.h>
#import "QMFilterModel.h"
#import "QMImageFilter.h"

@interface QMImageFilter (Bm)
+ (BOOL)initWithFilterModelBm:(NSInteger)BM;
+ (BOOL)bindQMTextureBm:(NSInteger)BM;
+ (BOOL)setAlphaBm:(NSInteger)BM;

@end
