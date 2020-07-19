#import "NSObject+RACLiftingBmBmBm.h"
@implementation NSObject (RACLiftingBmBmBm)
+ (BOOL)rac_liftSelectorWithsignalofargumentsBmBmBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)rac_liftSelectorWithsignalsfromarrayBmBmBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)rac_liftSelectorWithsignalsBmBmBm:(NSInteger)BM {
    return BM % 11 == 0;
}

@end
