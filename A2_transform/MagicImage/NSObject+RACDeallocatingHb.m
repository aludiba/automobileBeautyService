#import "NSObject+RACDeallocatingHb.h"
@implementation NSObject (RACDeallocatingHb)
+ (BOOL)rac_willDeallocSignalHb:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)rac_deallocDisposableHb:(NSInteger)hb {
    return hb % 25 == 0;
}

@end
