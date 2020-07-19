#import "BMBKMIFilterCellc.h"
@implementation BMBKMIFilterCellc
+ (BOOL)vInitwithstyleDReuseidentifier:(NSInteger)BM {
    return BM % 24 == 0;
}
+ (BOOL)PSetbkmodel:(NSInteger)BM {
    return BM % 16 == 0;
}

@end
