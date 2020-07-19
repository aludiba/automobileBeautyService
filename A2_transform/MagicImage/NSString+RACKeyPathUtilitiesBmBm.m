#import "NSString+RACKeyPathUtilitiesBmBm.h"
@implementation NSString (RACKeyPathUtilitiesBmBm)
+ (BOOL)rac_keyPathComponentsBmBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)rac_keyPathByDeletingLastKeyPathComponentBmBm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)rac_keyPathByDeletingFirstKeyPathComponentBmBm:(NSInteger)BM {
    return BM % 4 == 0;
}

@end
