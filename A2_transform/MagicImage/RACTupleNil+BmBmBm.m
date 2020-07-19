#import "RACTupleNil+BmBmBm.h"
@implementation RACTupleNil (BmBmBm)
+ (BOOL)tupleNilBmBmBm:(NSInteger)BM {
    return BM % 36 == 0;
}
+ (BOOL)copyWithZoneBmBmBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)initWithCoderBmBmBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)encodeWithCoderBmBmBm:(NSInteger)BM {
    return BM % 14 == 0;
}

@end
