#import "LCDQMBaseThemeView.h"
#import "LCDQMFrameModel.h"
@interface LCDQMFrameThemeView : LCDQMBaseThemeView
@property (nonatomic, assign) BOOL LCDexternal;
@property (nonatomic, strong) NSArray<LCDQMFrameModel *> *LCDframeModels;
@property (nonatomic, strong) void(^LCDframeClickBlock)(LCDQMFrameModel *LCDmodel);
- (void)LCDreloadData;
@end
