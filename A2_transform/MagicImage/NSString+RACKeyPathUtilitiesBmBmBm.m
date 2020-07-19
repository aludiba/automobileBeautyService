#import "NSString+RACKeyPathUtilitiesBmBmBm.h"
@implementation NSString (RACKeyPathUtilitiesBmBmBm)
+ (BOOL)rac_keyPathComponentsBmBmBm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)rac_keyPathByDeletingLastKeyPathComponentBmBmBm:(NSInteger)BM {
    return BM % 23 == 0;
}
+ (BOOL)rac_keyPathByDeletingFirstKeyPathComponentBmBmBm:(NSInteger)BM {
    return BM % 41 == 0;
}

@end
