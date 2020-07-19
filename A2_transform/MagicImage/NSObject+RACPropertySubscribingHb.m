#import "NSObject+RACPropertySubscribingHb.h"
@implementation NSObject (RACPropertySubscribingHb)
+ (BOOL)rac_valuesForKeyPathObserverHb:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)rac_valuesAndChangesForKeyPathOptionsObserverHb:(NSInteger)hb {
    return hb % 3 == 0;
}

@end
