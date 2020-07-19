#import "QMFrameModel+BmHb.h"
@implementation QMFrameModel (BmHb)
+ (BOOL)buildFrameModelsBmHb:(NSInteger)hb {
    return hb % 9 == 0;
}

@end
