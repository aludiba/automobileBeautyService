#import "AFJSONRequestSerializer+Hb.h"
@implementation AFJSONRequestSerializer (Hb)
+ (BOOL)serializerHb:(NSInteger)hb {
    return hb % 49 == 0;
}
+ (BOOL)serializerWithWritingOptionsHb:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)requestBySerializingRequestWithparametersErrorHb:(NSInteger)hb {
    return hb % 4 == 0;
}
+ (BOOL)initWithCoderHb:(NSInteger)hb {
    return hb % 25 == 0;
}
+ (BOOL)encodeWithCoderHb:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)copyWithZoneHb:(NSInteger)hb {
    return hb % 49 == 0;
}

@end
