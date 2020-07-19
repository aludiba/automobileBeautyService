#import "BMMKAnnotationViewA.h"
@implementation BMMKAnnotationViewA
+ (BOOL)trac_prepareForReuseSignal:(NSInteger)BM {
    return BM % 8 == 0;
}

@end
