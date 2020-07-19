#import "RACMulticastConnection+BmBm.h"
@implementation RACMulticastConnection (BmBm)
+ (BOOL)initWithSourceSignalSubjectBmBm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)connectBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)autoconnectBmBm:(NSInteger)BM {
    return BM % 18 == 0;
}

@end
