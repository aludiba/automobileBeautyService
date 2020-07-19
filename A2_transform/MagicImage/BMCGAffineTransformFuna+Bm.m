#import "BMCGAffineTransformFuna+Bm.h"
@implementation BMCGAffineTransformFuna (Bm)
+ (BOOL)zRadianwithcgaffinetransformBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)wScalexwithcgaffinetransformBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)rScaleywithcgaffinetransformBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)BTranslatewithcgaffinetranformzTxpTyBm:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)xCgrectforcenterwithaffinetransformtCgrectBm:(NSInteger)BM {
    return BM % 40 == 0;
}

@end
