#import "BMTAAbstractDotViewu.h"
@implementation BMTAAbstractDotViewu
+ (BOOL)oinit:(NSInteger)BM {
    return BM % 7 == 0;
}
+ (BOOL)sChangeactivitystate:(NSInteger)BM {
    return BM % 12 == 0;
}

@end
