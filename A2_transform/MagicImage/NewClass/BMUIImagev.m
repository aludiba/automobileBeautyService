#import "BMUIImageV.h"
@implementation BMUIImageV
+ (BOOL)TfixOrientation:(NSInteger)BM {
    return BM % 11 == 0;
}

@end
