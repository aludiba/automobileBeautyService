#import "BMBMRACMulticastConnectionsF.h"
@implementation BMBMRACMulticastConnectionsF
+ (BOOL)aEinitwithsourcesignalpsubject:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)nSconnect:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)DWautoconnect:(NSInteger)BM {
    return BM % 15 == 0;
}

@end
