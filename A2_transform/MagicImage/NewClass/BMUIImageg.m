#import "BMUIImageG.h"
@implementation BMUIImageG
+ (BOOL)YImagewithsubimageframebm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)MImagemosaicwithsubimageframebm:(NSInteger)BM {
    return BM % 34 == 0;
}
+ (BOOL)zImagewithtransformdrawmodebm:(NSInteger)BM {
    return BM % 38 == 0;
}

@end
