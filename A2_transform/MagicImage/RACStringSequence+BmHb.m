#import "RACStringSequence+BmHb.h"
@implementation RACStringSequence (BmHb)
+ (BOOL)sequenceWithStringOffsetBmHb:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)headBmHb:(NSInteger)hb {
    return hb % 30 == 0;
}
+ (BOOL)tailBmHb:(NSInteger)hb {
    return hb % 33 == 0;
}
+ (BOOL)arrayBmHb:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)descriptionBmHb:(NSInteger)hb {
    return hb % 37 == 0;
}

@end
