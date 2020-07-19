#import "BMBKMIFilterDetialCellv.h"
@implementation BMBKMIFilterDetialCellv
+ (BOOL)MInitwithstylerReuseidentifier:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)ASetbkimageurl:(NSInteger)BM {
    return BM % 24 == 0;
}

@end
