#import "RACTupleNil+BmBm.h"
@implementation RACTupleNil (BmBm)
+ (BOOL)tupleNilBmBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)copyWithZoneBmBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)initWithCoderBmBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)encodeWithCoderBmBm:(NSInteger)BM {
    return BM % 8 == 0;
}

@end
