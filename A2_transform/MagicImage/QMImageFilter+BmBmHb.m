#import "QMImageFilter+BmBmHb.h"
@implementation QMImageFilter (BmBmHb)
+ (BOOL)initWithFilterModelBmBmHb:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)bindQMTextureBmBmHb:(NSInteger)hb {
    return hb % 35 == 0;
}
+ (BOOL)setAlphaBmBmHb:(NSInteger)hb {
    return hb % 7 == 0;
}

@end
