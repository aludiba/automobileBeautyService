#import <UIKit/UIKit.h>
#import <YYModel.h>
@interface LCDQMSuspensionModel : NSObject<YYModel>
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *icon;
@property (nonatomic, assign) NSInteger type;
@property (nonatomic, assign) CGFloat value;
+ (NSArray<LCDQMSuspensionModel *> *)buildSuspensionModelsWithJson:(NSString *)jsonStr;
@end
@interface LCDQMSuspensionView : UIView
@property (nonatomic, strong) NSArray<LCDQMSuspensionModel *> *LCDsuspensionModels;
@property (nonatomic, copy) void (^LCDsuspensionItemClickBlock)(LCDQMSuspensionModel *LCDitem);
- (UICollectionViewFlowLayout *)LCDcollectionViewForFlowLayout;
- (void)LCDtoggleBelowInView:(UIView *)LCDview;
- (void)LCDshowBelowInView:(UIView *)LCDview;
- (BOOL)LCDhide;
@end
