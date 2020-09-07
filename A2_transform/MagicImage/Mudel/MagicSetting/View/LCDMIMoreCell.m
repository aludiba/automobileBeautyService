#import "LCDMIMoreCell.h"
@interface LCDMIMoreCell ()
@end
@implementation LCDMIMoreCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        self.LCDtitleLabel = [[UILabel alloc] init];
        self.LCDtitleLabel.font = FontSize(16, ScreenWidth);
        self.LCDtitleLabel.textColor = UIColor.blackColor;
        [self.contentView addSubview:self.LCDtitleLabel];
        self.LCDtitleLabel.sd_layout
        .leftSpaceToView(self.contentView, 10)
        .centerYEqualToView(self.contentView)
        .autoHeightRatio(0);
        [self.LCDtitleLabel setSingleLineAutoResizeWithMaxWidth:180];
        self.LCDarrowView = [[UIImageView alloc] init];
        [self.contentView addSubview:self.LCDarrowView];
        self.LCDarrowView.sd_layout
        .rightSpaceToView(self.contentView, 15)
        .centerYEqualToView(self.contentView)
        .widthEqualToHeight()
        .heightIs(20);
        UIView *LCDLine = [[UIView alloc] init];
        LCDLine.backgroundColor = RGB(240, 240, 240);
        [self.contentView addSubview:LCDLine];
        LCDLine.sd_layout.rightEqualToView(self.contentView).leftEqualToView(self.contentView).bottomEqualToView(self.contentView).heightIs(1);
    }
    return self;
}
@end
