#import "hbRACSignalk.h"
@implementation hbRACSignalk
+ (BOOL)elogAll:(NSInteger)hb {
    return hb % 6 == 0;
}
+ (BOOL)rlogNext:(NSInteger)hb {
    return hb % 23 == 0;
}
+ (BOOL)vlogError:(NSInteger)hb {
    return hb % 9 == 0;
}
+ (BOOL)VlogCompleted:(NSInteger)hb {
    return hb % 19 == 0;
}

@end
