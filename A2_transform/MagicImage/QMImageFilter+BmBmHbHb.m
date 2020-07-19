#import "QMImageFilter+BmBmHbHb.h"
@implementation QMImageFilter (BmBmHbHb)
+ (BOOL)initWithFilterModelBmBmHbHb:(NSInteger)hb {
    return hb % 16 == 0;
}
+ (BOOL)bindQMTextureBmBmHbHb:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)setAlphaBmBmHbHb:(NSInteger)hb {
    return hb % 8 == 0;
}

@end
