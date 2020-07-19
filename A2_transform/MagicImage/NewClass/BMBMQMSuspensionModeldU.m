#import "BMBMQMSuspensionModeldU.h"
@implementation BMBMQMSuspensionModeldU
+ (BOOL)YRbuildsuspensionmodelswithjson:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)XObuildsuspensionmodelswithconfig:(NSInteger)BM {
    return BM % 8 == 0;
}

@end
