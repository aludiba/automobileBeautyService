#import "RACKVOChannel+BmHb.h"
@implementation RACKVOChannel (BmHb)
+ (BOOL)currentThreadDataBmHb:(NSInteger)hb {
    return hb % 46 == 0;
}
+ (BOOL)initWithTargetKeypathNilvalueBmHb:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)createCurrentThreadDataBmHb:(NSInteger)hb {
    return hb % 37 == 0;
}
+ (BOOL)destroyCurrentThreadDataBmHb:(NSInteger)hb {
    return hb % 45 == 0;
}

@end
