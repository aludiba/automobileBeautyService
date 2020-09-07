#import "LCDMIHomeSectionOneCell.h"
#import "LCDMIHomeView.h"
#import "LCDMIHomeToolsView.h"
#import "UIImage+GradientColor.h"
#import "UIColor+Hex.h"
@implementation LCDMIHomeSectionOneCell
- (instancetype)initWithStyle:(UITableViewCellStyle)LCDstyle reuseIdentifier:(NSString *)LCDreuseIdentifier{
    if (self = [super initWithStyle:LCDstyle reuseIdentifier:LCDreuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor cyanColor];
        UIColor *LCDColor = [UIColor colorWithHexString:@"#FEB692"];
        UIColor *LCDColor1 = [UIColor colorWithHexString:@"#EA5455"];
        UIColor *LCDColor2 = [UIColor colorWithHexString:@"#CE9FFC"];
        UIColor *LCDColor3 = [UIColor colorWithHexString:@"#7367F0"];
        UIColor *LCDColor4 = [UIColor colorWithHexString:@"#CE9FFC"];
        UIColor *LCDColor5 = [UIColor colorWithHexString:@"#7367F0"];
        UIColor *LCDColor6 = [UIColor colorWithHexString:@"#43CBFF"];
        UIColor *LCDColor7 = [UIColor colorWithHexString:@"#9708CC"];
        UIColor *LCDColor8 = [UIColor colorWithHexString:@"#FCCF31"];
        UIColor *LCDColor9 = [UIColor colorWithHexString:@"#F55555"];
        UIColor *LCDColor10 = [UIColor colorWithHexString:@"#65FDF0"];
        UIColor *LCDColor11 = [UIColor colorWithHexString:@"#1D6FA3"];
        UIImage *bgImg = [UIImage gradientColorImageFromColors:@[LCDColor,LCDColor1,LCDColor2,LCDColor3,LCDColor4,LCDColor5,LCDColor6,LCDColor7,LCDColor8,LCDColor9,LCDColor10,LCDColor11] gradientType:GradientTypeLeftToRight imgSize:CGSizeMake(ScreenWidth,(ScreenWidth - 20) * 3 / 5)];
        [self.contentView setBackgroundColor:[UIColor colorWithPatternImage:bgImg]];
        
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        LCDMIHomeView *LCDhomeView = [[LCDMIHomeView alloc] init];
        KWeakSelf(self);
        LCDhomeView.block = ^(NSInteger tag) {
            weakself.block(tag);
        };
        [self.contentView addSubview:LCDhomeView];
        LCDhomeView.sd_layout
        .leftSpaceToView(self.contentView, 10)
        .rightSpaceToView(self.contentView, 10)
        .topSpaceToView(self.contentView, 0)
        .heightIs((ScreenWidth-20)*3/5);
        LCDMIHomeToolsView *LCDbottomView = [[LCDMIHomeToolsView alloc] init];
        LCDbottomView.block = ^(NSInteger tag) {
            weakself.block(tag);
        };
        [self.contentView addSubview:LCDbottomView];
        LCDbottomView.sd_layout
        .leftEqualToView(LCDhomeView)
        .rightEqualToView(LCDhomeView)
        .bottomSpaceToView(self.contentView, 5)
        .heightIs((ScreenWidth-20)/5);
    }
    return self;
}
@end
