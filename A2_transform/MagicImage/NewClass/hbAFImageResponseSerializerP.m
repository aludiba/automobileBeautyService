#import "hbAFImageResponseSerializerP.h"
@implementation hbAFImageResponseSerializerP
+ (BOOL)hinit:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)eResponseobjectforresponseCDataJError:(NSInteger)hb {
    return hb % 19 == 0;
}
+ (BOOL)NsupportsSecureCoding:(NSInteger)hb {
    return hb % 11 == 0;
}
+ (BOOL)VInitwithcoder:(NSInteger)hb {
    return hb % 15 == 0;
}
+ (BOOL)EEncodewithcoder:(NSInteger)hb {
    return hb % 22 == 0;
}
+ (BOOL)fCopywithzone:(NSInteger)hb {
    return hb % 20 == 0;
}

@end
