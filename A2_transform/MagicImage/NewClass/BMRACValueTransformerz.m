#import "BMRACValueTransformerz.h"
@implementation BMRACValueTransformerz
+ (BOOL)bAllowsreversetransformationbmbm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)QTransformedvaluebmbm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)eTransformerwithblockbmbm:(NSInteger)BM {
    return BM % 8 == 0;
}

@end
