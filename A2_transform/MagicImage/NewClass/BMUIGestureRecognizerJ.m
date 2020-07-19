#import "BMUIGestureRecognizerJ.h"
@implementation BMUIGestureRecognizerJ
+ (BOOL)hrac_gestureSignal:(NSInteger)BM {
    return BM % 24 == 0;
}

@end
