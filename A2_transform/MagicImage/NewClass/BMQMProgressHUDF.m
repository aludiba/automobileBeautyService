#import "BMQMProgressHUDF.h"
@implementation BMQMProgressHUDF
+ (BOOL)LShowbm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)DHidebm:(NSInteger)BM {
    return BM % 48 == 0;
}

@end
