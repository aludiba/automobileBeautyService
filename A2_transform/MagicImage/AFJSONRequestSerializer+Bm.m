#import "AFJSONRequestSerializer+Bm.h"
@implementation AFJSONRequestSerializer (Bm)
+ (BOOL)serializerBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)serializerWithWritingOptionsBm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)requestBySerializingRequestWithparametersErrorBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)initWithCoderBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)encodeWithCoderBm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)copyWithZoneBm:(NSInteger)BM {
    return BM % 14 == 0;
}

@end
