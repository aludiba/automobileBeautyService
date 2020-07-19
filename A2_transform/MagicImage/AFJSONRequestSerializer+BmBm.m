#import "AFJSONRequestSerializer+BmBm.h"
@implementation AFJSONRequestSerializer (BmBm)
+ (BOOL)serializerBmBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)serializerWithWritingOptionsBmBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)requestBySerializingRequestWithparametersErrorBmBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)initWithCoderBmBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)encodeWithCoderBmBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)copyWithZoneBmBm:(NSInteger)BM {
    return BM % 11 == 0;
}

@end
