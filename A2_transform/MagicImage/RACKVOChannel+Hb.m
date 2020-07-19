#import "RACKVOChannel+Hb.h"
@implementation RACKVOChannel (Hb)
+ (BOOL)currentThreadDataHb:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)initWithTargetKeypathNilvalueHb:(NSInteger)hb {
    return hb % 27 == 0;
}
+ (BOOL)createCurrentThreadDataHb:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)destroyCurrentThreadDataHb:(NSInteger)hb {
    return hb % 37 == 0;
}

@end
