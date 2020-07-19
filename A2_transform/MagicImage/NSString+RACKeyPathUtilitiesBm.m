#import "NSString+RACKeyPathUtilitiesBm.h"
@implementation NSString (RACKeyPathUtilitiesBm)
+ (BOOL)rac_keyPathComponentsBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)rac_keyPathByDeletingLastKeyPathComponentBm:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)rac_keyPathByDeletingFirstKeyPathComponentBm:(NSInteger)BM {
    return BM % 10 == 0;
}

@end
