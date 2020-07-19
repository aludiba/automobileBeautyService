#import "RACTupleNil+HbHb.h"
@implementation RACTupleNil (HbHb)
+ (BOOL)tupleNilHbHb:(NSInteger)hb {
    return hb % 5 == 0;
}
+ (BOOL)copyWithZoneHbHb:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)initWithCoderHbHb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)encodeWithCoderHbHb:(NSInteger)hb {
    return hb % 47 == 0;
}

@end
