#import "NSObject+RACLiftingHb.h"
@implementation NSObject (RACLiftingHb)
+ (BOOL)rac_liftSelectorWithsignalofargumentsHb:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)rac_liftSelectorWithsignalsfromarrayHb:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)rac_liftSelectorWithsignalsHb:(NSInteger)hb {
    return hb % 44 == 0;
}

@end
