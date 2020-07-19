#import "BMDGActivityIndicatorBallGridBeatAnimationd.h"
@implementation BMDGActivityIndicatorBallGridBeatAnimationd
+ (BOOL)fSetupanimationinlayerwithsizetintcolorbmbm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)PCreatecirlewithcolorbmbm:(NSInteger)BM {
    return BM % 35 == 0;
}

@end
