#import "RACTupleNil+Bm.h"
@implementation RACTupleNil (Bm)
+ (BOOL)tupleNilBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)copyWithZoneBm:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)initWithCoderBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)encodeWithCoderBm:(NSInteger)BM {
    return BM % 31 == 0;
}

@end
