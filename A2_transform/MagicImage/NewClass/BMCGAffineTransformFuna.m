#import "BMCGAffineTransformFuna.h"
@implementation BMCGAffineTransformFuna
+ (BOOL)zRadianwithcgaffinetransform:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)wScalexwithcgaffinetransform:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)rScaleywithcgaffinetransform:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)BTranslatewithcgaffinetranformzTxpTy:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)xCgrectforcenterwithaffinetransformtCgrect:(NSInteger)BM {
    return BM % 47 == 0;
}

@end
