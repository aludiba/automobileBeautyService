#import "QMImageFilter+BmBm.h"
@implementation QMImageFilter (BmBm)
+ (BOOL)initWithFilterModelBmBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)bindQMTextureBmBm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)setAlphaBmBm:(NSInteger)BM {
    return BM % 9 == 0;
}

@end
