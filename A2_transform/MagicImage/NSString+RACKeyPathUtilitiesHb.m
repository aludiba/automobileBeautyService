#import "NSString+RACKeyPathUtilitiesHb.h"
@implementation NSString (RACKeyPathUtilitiesHb)
+ (BOOL)rac_keyPathComponentsHb:(NSInteger)hb {
    return hb % 36 == 0;
}
+ (BOOL)rac_keyPathByDeletingLastKeyPathComponentHb:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)rac_keyPathByDeletingFirstKeyPathComponentHb:(NSInteger)hb {
    return hb % 42 == 0;
}

@end
