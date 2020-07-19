#import "BMQMProgressHUDl.h"
@implementation BMQMProgressHUDl
+ (BOOL)cshow:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)Fhide:(NSInteger)BM {
    return BM % 39 == 0;
}

@end
