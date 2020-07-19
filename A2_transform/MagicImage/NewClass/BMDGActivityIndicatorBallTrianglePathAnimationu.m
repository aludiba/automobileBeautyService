#import "BMDGActivityIndicatorBallTrianglePathAnimationu.h"
@implementation BMDGActivityIndicatorBallTrianglePathAnimationu
+ (BOOL)ySetupanimationinlayerwithsizetintcolorbmbm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)zCreatecirclewithsizecolorbmbm:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)UChangeanimationvaluesdeltaxdeltaybmbm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)uTranslatewithdeltaxdeltaybmbm:(NSInteger)BM {
    return BM % 36 == 0;
}

@end
