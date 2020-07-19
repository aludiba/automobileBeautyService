#import "MASConstraint.h"
#import "MASUtilities.h"
#import "MASCompositeConstraint.h"
#import "MASConstraint+Private.h"
#import "MASCompositeConstraint+Bm.h"

@interface MASCompositeConstraint (BmBm)
+ (BOOL)initWithChildrenBmBm:(NSInteger)BM;
+ (BOOL)constraintShouldbereplacedwithconstraintBmBm:(NSInteger)BM;
+ (BOOL)constraintAddconstraintwithlayoutattributeBmBm:(NSInteger)BM;
+ (BOOL)multipliedByBmBm:(NSInteger)BM;
+ (BOOL)dividedByBmBm:(NSInteger)BM;
+ (BOOL)priorityBmBm:(NSInteger)BM;
+ (BOOL)equalToWithRelationBmBm:(NSInteger)BM;
+ (BOOL)addConstraintWithLayoutAttributeBmBm:(NSInteger)BM;
+ (BOOL)animatorBmBm:(NSInteger)BM;
+ (BOOL)keyBmBm:(NSInteger)BM;
+ (BOOL)setInsetsBmBm:(NSInteger)BM;
+ (BOOL)setInsetBmBm:(NSInteger)BM;
+ (BOOL)setOffsetBmBm:(NSInteger)BM;
+ (BOOL)setSizeOffsetBmBm:(NSInteger)BM;
+ (BOOL)setCenterOffsetBmBm:(NSInteger)BM;
+ (BOOL)activateBmBm:(NSInteger)BM;
+ (BOOL)deactivateBmBm:(NSInteger)BM;
+ (BOOL)installBmBm:(NSInteger)BM;
+ (BOOL)uninstallBmBm:(NSInteger)BM;

@end
