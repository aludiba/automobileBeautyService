#import "QMImageFilter+Bm.h"
@implementation QMImageFilter (Bm)
+ (BOOL)initWithFilterModelBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)bindQMTextureBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)setAlphaBm:(NSInteger)BM {
    return BM % 14 == 0;
}

@end
