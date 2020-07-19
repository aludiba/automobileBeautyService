#import "MASConstraint.h"
#import "MASUtilities.h"
#import "MASCompositeConstraint.h"
#import "MASConstraint+Private.h"
#import "MASCompositeConstraint+Bm.h"
#import "MASCompositeConstraint+BmBm.h"

@interface MASCompositeConstraint (BmBmBm)
+ (BOOL)initWithChildrenBmBmBm:(NSInteger)BM;
+ (BOOL)constraintShouldbereplacedwithconstraintBmBmBm:(NSInteger)BM;
+ (BOOL)constraintAddconstraintwithlayoutattributeBmBmBm:(NSInteger)BM;
+ (BOOL)multipliedByBmBmBm:(NSInteger)BM;
+ (BOOL)dividedByBmBmBm:(NSInteger)BM;
+ (BOOL)priorityBmBmBm:(NSInteger)BM;
+ (BOOL)equalToWithRelationBmBmBm:(NSInteger)BM;
+ (BOOL)addConstraintWithLayoutAttributeBmBmBm:(NSInteger)BM;
+ (BOOL)animatorBmBmBm:(NSInteger)BM;
+ (BOOL)keyBmBmBm:(NSInteger)BM;
+ (BOOL)setInsetsBmBmBm:(NSInteger)BM;
+ (BOOL)setInsetBmBmBm:(NSInteger)BM;
+ (BOOL)setOffsetBmBmBm:(NSInteger)BM;
+ (BOOL)setSizeOffsetBmBmBm:(NSInteger)BM;
+ (BOOL)setCenterOffsetBmBmBm:(NSInteger)BM;
+ (BOOL)activateBmBmBm:(NSInteger)BM;
+ (BOOL)deactivateBmBmBm:(NSInteger)BM;
+ (BOOL)installBmBmBm:(NSInteger)BM;
+ (BOOL)uninstallBmBmBm:(NSInteger)BM;

@end
