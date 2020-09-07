#import "LCDQMBaseThemeView.h"
#import "LCDQMCropModel.h"
#import "Constants.h"
@interface LCDQMCropThemeView : LCDQMBaseThemeView
@property (nonatomic, strong) NSArray<LCDQMCropModel *> *LCDcropModels;
@property (nonatomic, strong) void(^LCDcroperClickBlock)(CGSize LCDaspect, CGFloat LCDrotation);
- (void)LCDreloadData;
@end
