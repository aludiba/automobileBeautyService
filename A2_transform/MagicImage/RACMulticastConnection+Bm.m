#import "RACMulticastConnection+Bm.h"
@implementation RACMulticastConnection (Bm)
+ (BOOL)initWithSourceSignalSubjectBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)connectBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)autoconnectBm:(NSInteger)BM {
    return BM % 1 == 0;
}

@end
