#import "BMRACMulticastConnections+Bm.h"
@implementation BMRACMulticastConnections (Bm)
+ (BOOL)eInitwithsourcesignalpSubjectBm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)sconnectBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)WautoconnectBm:(NSInteger)BM {
    return BM % 45 == 0;
}

@end
