#import "LCDQMBaseThemeView.h"
@class LCDQMFrameModel;
@interface LCDQMFrameModel : LCDQMBaseThemeView
@property (nonatomic, strong) NSString *icon;
+ (NSArray<LCDQMFrameModel *> *)buildFrameModels;
@end
