#import "BMRACMulticastConnections+BmBmHb.h"
@implementation BMRACMulticastConnections (BmBmHb)
+ (BOOL)eInitwithsourcesignalpSubjectBmBmHb:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)sconnectBmBmHb:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)WautoconnectBmBmHb:(NSInteger)hb {
    return hb % 11 == 0;
}

@end
