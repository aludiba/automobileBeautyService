#import "NSObject+RACPropertySubscribingBmBmBm.h"
@implementation NSObject (RACPropertySubscribingBmBmBm)
+ (BOOL)rac_valuesForKeyPathObserverBmBmBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)rac_valuesAndChangesForKeyPathOptionsObserverBmBmBm:(NSInteger)BM {
    return BM % 7 == 0;
}

@end
