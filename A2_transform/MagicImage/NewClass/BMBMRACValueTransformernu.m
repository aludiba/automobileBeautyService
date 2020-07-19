#import "BMBMRACValueTransformernu.h"
@implementation BMBMRACValueTransformernu
+ (BOOL)cPallowsreversetransformation:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)yPtransformedvalue:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)xStransformerwithblock:(NSInteger)BM {
    return BM % 37 == 0;
}

@end
