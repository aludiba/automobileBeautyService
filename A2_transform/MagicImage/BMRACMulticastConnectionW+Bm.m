#import "BMRACMulticastConnectionW+Bm.h"
@implementation BMRACMulticastConnectionW (Bm)
+ (BOOL)kInitwithsourcesignalWSubjectBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)aconnectBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)YautoconnectBm:(NSInteger)BM {
    return BM % 28 == 0;
}

@end
