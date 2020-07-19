#import "NSObject+RACLiftingBmBm.h"
@implementation NSObject (RACLiftingBmBm)
+ (BOOL)rac_liftSelectorWithsignalofargumentsBmBm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)rac_liftSelectorWithsignalsfromarrayBmBm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)rac_liftSelectorWithsignalsBmBm:(NSInteger)BM {
    return BM % 43 == 0;
}

@end
