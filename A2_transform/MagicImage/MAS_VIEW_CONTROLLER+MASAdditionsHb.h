#import "MASUtilities.h"
#import "MASConstraintMaker.h"
#import "MASViewAttribute.h"
#import "ViewController+MASAdditions.h"

@interface MAS_VIEW_CONTROLLER (MASAdditionsHb)
+ (BOOL)mas_topLayoutGuideHb:(NSInteger)hb;
+ (BOOL)mas_topLayoutGuideTopHb:(NSInteger)hb;
+ (BOOL)mas_topLayoutGuideBottomHb:(NSInteger)hb;
+ (BOOL)mas_bottomLayoutGuideHb:(NSInteger)hb;
+ (BOOL)mas_bottomLayoutGuideTopHb:(NSInteger)hb;
+ (BOOL)mas_bottomLayoutGuideBottomHb:(NSInteger)hb;

@end
