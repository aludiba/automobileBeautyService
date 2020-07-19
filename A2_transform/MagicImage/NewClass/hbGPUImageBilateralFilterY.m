#import "hbGPUImageBilateralFilterY.h"
@implementation hbGPUImageBilateralFilterY
+ (BOOL)dInithb:(NSInteger)hb {
    return hb % 18 == 0;
}
+ (BOOL)QSetdistancenormalizationfactorhb:(NSInteger)hb {
    return hb % 20 == 0;
}

@end
