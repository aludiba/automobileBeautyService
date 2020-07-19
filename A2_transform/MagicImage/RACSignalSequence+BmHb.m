#import "RACSignalSequence+BmHb.h"
@implementation RACSignalSequence (BmHb)
+ (BOOL)sequenceWithSignalBmHb:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)headBmHb:(NSInteger)hb {
    return hb % 21 == 0;
}
+ (BOOL)tailBmHb:(NSInteger)hb {
    return hb % 14 == 0;
}
+ (BOOL)arrayBmHb:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)descriptionBmHb:(NSInteger)hb {
    return hb % 3 == 0;
}

@end
