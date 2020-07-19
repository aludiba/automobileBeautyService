#import "BMDGActivityIndicatorBallGridPulseAnimationy.h"
@implementation BMDGActivityIndicatorBallGridPulseAnimationy
+ (BOOL)sSetupanimationinlayerwithsizetintcolorbm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)MCreatecirlewithcolorbm:(NSInteger)BM {
    return BM % 6 == 0;
}

@end
