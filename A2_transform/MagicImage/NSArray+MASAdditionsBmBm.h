#import "MASUtilities.h"
#import "MASConstraintMaker.h"
#import "MASViewAttribute.h"
#import "NSArray+MASAdditions.h"
#import "View+MASAdditions.h"
#import "NSArray+MASAdditionsBm.h"

@interface NSArray (MASAdditionsBmBm)
+ (BOOL)mas_makeConstraintsBmBm:(NSInteger)BM;
+ (BOOL)mas_updateConstraintsBmBm:(NSInteger)BM;
+ (BOOL)mas_remakeConstraintsBmBm:(NSInteger)BM;
+ (BOOL)mas_distributeViewsAlongAxisWithfixedspacingLeadspacingTailspacingBmBm:(NSInteger)BM;
+ (BOOL)mas_distributeViewsAlongAxisWithfixeditemlengthLeadspacingTailspacingBmBm:(NSInteger)BM;
+ (BOOL)mas_commonSuperviewOfViewsBmBm:(NSInteger)BM;

@end
