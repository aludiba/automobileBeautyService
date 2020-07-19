#import "BMBKMIFilterCellM.h"
@implementation BMBKMIFilterCellM
+ (BOOL)XInitwithstylereuseidentifierbm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)xSetbkmodelbm:(NSInteger)BM {
    return BM % 10 == 0;
}

@end
