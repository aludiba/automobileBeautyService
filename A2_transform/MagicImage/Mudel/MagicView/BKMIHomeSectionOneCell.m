#import "BKMIHomeSectionOneCell.h"
#import "BKMIHomeView.h"
#import "BKMIHomeToolsView.h"
#import "UIImage+GradientColor.h"
#import "UIColor+Hex.h"
@implementation BKMIHomeSectionOneCell
- (instancetype)initWithStyle:(UITableViewCellStyle)BKstyle reuseIdentifier:(NSString *)BKreuseIdentifier{
    if (self = [super initWithStyle:BKstyle reuseIdentifier:BKreuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor whiteColor];
//        UIColor *BKColor = [UIColor colorWithHexString:@"#FEB692"];
//        UIColor *BKColor1 = [UIColor colorWithHexString:@"#EA5455"];
//        UIColor *BKColor2 = [UIColor colorWithHexString:@"#CE9FFC"];
//        UIColor *BKColor3 = [UIColor colorWithHexString:@"#7367F0"];
//        UIColor *BKColor4 = [UIColor colorWithHexString:@"#CE9FFC"];
//        UIColor *BKColor5 = [UIColor colorWithHexString:@"#7367F0"];
//        UIColor *BKColor6 = [UIColor colorWithHexString:@"#43CBFF"];
//        UIColor *BKColor7 = [UIColor colorWithHexString:@"#9708CC"];
//        UIColor *BKColor8 = [UIColor colorWithHexString:@"#FCCF31"];
//        UIColor *BKColor9 = [UIColor colorWithHexString:@"#F55555"];
//        UIColor *BKColor10 = [UIColor colorWithHexString:@"#65FDF0"];
//        UIColor *BKColor11 = [UIColor colorWithHexString:@"#1D6FA3"];
//
//        UIImage *bgImg = [UIImage gradientColorImageFromColors:@[BKColor,BKColor1,BKColor2,BKColor3,BKColor4,BKColor5,BKColor6,BKColor7,BKColor8,BKColor9,BKColor10,BKColor11] gradientType:GradientTypeLeftToRight imgSize:CGSizeMake(ScreenWidth,(ScreenWidth-20)*3/5)];
//        [self.contentView setBackgroundColor:[UIColor colorWithPatternImage:bgImg]];
        
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        BKMIHomeView *BKhomeView = [[BKMIHomeView alloc] init];
        KWeakSelf(self);
        BKhomeView.block = ^(NSInteger tag) {
            weakself.block(tag);
        };
        [self.contentView addSubview:BKhomeView];
        BKhomeView.sd_layout
        .leftSpaceToView(self.contentView, 10)
        .rightSpaceToView(self.contentView, 10)
        .topSpaceToView(self.contentView, 0)
        .heightIs((ScreenWidth-20)*3/5);
        BKMIHomeToolsView *BKbottomView = [[BKMIHomeToolsView alloc] init];
        BKbottomView.block = ^(NSInteger tag) {
            weakself.block(tag);
        };
        [self.contentView addSubview:BKbottomView];
        BKbottomView.sd_layout
        .leftEqualToView(BKhomeView)
        .rightEqualToView(BKhomeView)
        .bottomSpaceToView(self.contentView, 5)
        .heightIs((ScreenWidth-20)/5);
    }
    return self;
}
@end
