#import <GPUImage/GPUImage.h>
#import "QMFilterModel.h"
#import "QMImageFilter.h"
#import "QMImageFilter+Bm.h"
#import "QMImageFilter+BmBm.h"
#import "QMImageFilter+BmBmHb.h"

@interface QMImageFilter (BmBmHbHb)
+ (BOOL)initWithFilterModelBmBmHbHb:(NSInteger)hb;
+ (BOOL)bindQMTextureBmBmHbHb:(NSInteger)hb;
+ (BOOL)setAlphaBmBmHbHb:(NSInteger)hb;

@end
