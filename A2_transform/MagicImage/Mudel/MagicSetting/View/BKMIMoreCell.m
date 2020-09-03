#import "BKMIMoreCell.h"
@interface BKMIMoreCell ()
@end
@implementation BKMIMoreCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        self.BKtitleLabel = [[UILabel alloc] init];
        self.BKtitleLabel.font = FontSize(16, ScreenWidth);
        self.BKtitleLabel.textColor = UIColor.blackColor;
        [self.contentView addSubview:self.BKtitleLabel];
        self.BKtitleLabel.sd_layout
        .leftSpaceToView(self.contentView, 10)
        .centerYEqualToView(self.contentView)
        .autoHeightRatio(0);
        [self.BKtitleLabel setSingleLineAutoResizeWithMaxWidth:180];
        self.BKarrowView = [[UIImageView alloc] init];
        [self.contentView addSubview:self.BKarrowView];
        self.BKarrowView.sd_layout
        .rightSpaceToView(self.contentView, 15)
        .centerYEqualToView(self.contentView)
        .widthEqualToHeight()
        .heightIs(20);
        UIView *BKLine = [[UIView alloc] init];
        BKLine.backgroundColor = RGB(240, 240, 240);
        [self.contentView addSubview:BKLine];
        BKLine.sd_layout.rightEqualToView(self.contentView).leftEqualToView(self.contentView).bottomEqualToView(self.contentView).heightIs(1);
    }
    return self;
}
@end
