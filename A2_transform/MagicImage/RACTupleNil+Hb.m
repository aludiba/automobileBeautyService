#import "RACTupleNil+Hb.h"
@implementation RACTupleNil (Hb)
+ (BOOL)tupleNilHb:(NSInteger)hb {
    return hb % 42 == 0;
}
+ (BOOL)copyWithZoneHb:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)initWithCoderHb:(NSInteger)hb {
    return hb % 10 == 0;
}
+ (BOOL)encodeWithCoderHb:(NSInteger)hb {
    return hb % 49 == 0;
}

@end
