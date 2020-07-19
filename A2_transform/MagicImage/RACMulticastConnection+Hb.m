#import "RACMulticastConnection+Hb.h"
@implementation RACMulticastConnection (Hb)
+ (BOOL)initWithSourceSignalSubjectHb:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)connectHb:(NSInteger)hb {
    return hb % 20 == 0;
}
+ (BOOL)autoconnectHb:(NSInteger)hb {
    return hb % 47 == 0;
}

@end
