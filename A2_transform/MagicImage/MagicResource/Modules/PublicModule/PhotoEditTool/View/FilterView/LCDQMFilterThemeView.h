#import "LCDQMBaseThemeView.h"
#import "LCDQMFilterModel.h"
@interface LCDQMFilterThemeView : LCDQMBaseThemeView
@property (nonatomic, strong) NSArray<LCDQMFilterModel *> *LCDfilterModels;
@property (nonatomic, strong) void(^LCDsliderValueChangeBlock)(NSInteger index, float value);
@property (nonatomic, strong) void(^LCDfilterClickBlock)(LCDQMFilterModel *model);
- (instancetype)init;
- (void)LCDreloadData;
@end
