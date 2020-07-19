#import <GPUImage/GPUImage.h>
#import "QMFilterModel.h"
#import "QMImageFilter.h"
#import "QMImageFilter+Bm.h"
#import "QMImageFilter+BmBm.h"

@interface QMImageFilter (BmBmHb)
+ (BOOL)initWithFilterModelBmBmHb:(NSInteger)hb;
+ (BOOL)bindQMTextureBmBmHb:(NSInteger)hb;
+ (BOOL)setAlphaBmBmHb:(NSInteger)hb;

@end
