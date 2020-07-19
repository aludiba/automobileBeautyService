#import "BMBKMIFilterDetialCellp.h"
@implementation BMBKMIFilterDetialCellp
+ (BOOL)JInitwithstyleQReuseidentifier:(NSInteger)BM {
    return BM % 20 == 0;
}
+ (BOOL)BSetbkimageurl:(NSInteger)BM {
    return BM % 33 == 0;
}

@end
