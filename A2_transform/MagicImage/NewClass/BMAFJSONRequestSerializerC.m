#import "BMAFJSONRequestSerializerC.h"
@implementation BMAFJSONRequestSerializerC
+ (BOOL)fSerializerbm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)BSerializerwithwritingoptionsbm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)ARequestbyserializingrequestwithparameterserrorbm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)mInitwithcoderbm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)iEncodewithcoderbm:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)cCopywithzonebm:(NSInteger)BM {
    return BM % 3 == 0;
}

@end
