#import "NSObject+RACLiftingBm.h"
@implementation NSObject (RACLiftingBm)
+ (BOOL)rac_liftSelectorWithsignalofargumentsBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)rac_liftSelectorWithsignalsfromarrayBm:(NSInteger)BM {
    return BM % 35 == 0;
}
+ (BOOL)rac_liftSelectorWithsignalsBm:(NSInteger)BM {
    return BM % 10 == 0;
}

@end
