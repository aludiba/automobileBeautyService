#import "BMCGAffineTransformFunl.h"
@implementation BMCGAffineTransformFunl
+ (BOOL)qRadianwithcgaffinetransform:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)RScalexwithcgaffinetransform:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)JScaleywithcgaffinetransform:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)eTranslatewithcgaffinetranformhTxjTy:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)sCgrectforcenterwithaffinetransformjCgrect:(NSInteger)BM {
    return BM % 9 == 0;
}

@end
