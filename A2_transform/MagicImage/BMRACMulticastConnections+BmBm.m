#import "BMRACMulticastConnections+BmBm.h"
@implementation BMRACMulticastConnections (BmBm)
+ (BOOL)eInitwithsourcesignalpSubjectBmBm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)sconnectBmBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)WautoconnectBmBm:(NSInteger)BM {
    return BM % 17 == 0;
}

@end
