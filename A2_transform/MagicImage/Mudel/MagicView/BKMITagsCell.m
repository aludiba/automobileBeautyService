#import "BKMITagsCell.h"
#import "BKMITagsModel.h"
@interface BKMITagsCell ()
@property (nonatomic, strong) UIImageView * BKiconImageView;
@property (nonatomic, strong) UILabel * BKtitleLabel;
@end
@implementation BKMITagsCell
- (instancetype)initWithStyle:(UITableViewCellStyle)BKstyle reuseIdentifier:(NSString *)BKreuseIdentifier{
    if (self = [super initWithStyle:BKstyle reuseIdentifier:BKreuseIdentifier]) {
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        self.backgroundColor = UIColor.clearColor;
        UIImageView * BKbgImageView = [[UIImageView alloc] init];
        BKbgImageView.layer.cornerRadius = 8;
        BKbgImageView.layer.masksToBounds = YES;
        BKbgImageView.backgroundColor = UIColor.whiteColor;
        [self.contentView addSubview:BKbgImageView];
        BKbgImageView.sd_layout
        .leftSpaceToView(self.contentView, 10)
        .rightSpaceToView(self.contentView, 10)
        .topSpaceToView(self.contentView, 5)
        .bottomSpaceToView(self.contentView, 0);
        self.BKiconImageView = [[UIImageView alloc] init];
        [self.contentView addSubview:self.BKiconImageView];
        self.BKiconImageView.sd_layout
        .leftSpaceToView(BKbgImageView.mas_left, 15)
        .centerYEqualToView(BKbgImageView)
        .widthIs(30)
        .heightEqualToWidth();
        self.BKtitleLabel = [[UILabel alloc] init];
        self.BKtitleLabel.font = [UIFont systemFontOfSize:16];
        self.BKtitleLabel.textColor = UIColor.blackColor;
        [BKbgImageView addSubview:self.BKtitleLabel];
        self.BKtitleLabel.sd_layout
        .leftSpaceToView(self.BKiconImageView.mas_right, 40)
        .centerYEqualToView(BKbgImageView)
        .autoHeightRatio(0);
        [self.BKtitleLabel setSingleLineAutoResizeWithMaxWidth:ScreenWidth];
        UIImageView * BKarrowImageView = [[UIImageView alloc] initWithImage:PEImage(@"PEArrow")];
        [BKbgImageView addSubview:BKarrowImageView];
        BKarrowImageView.sd_layout
        .rightSpaceToView(BKbgImageView, 5)
        .centerYEqualToView(BKbgImageView)
        .widthIs(25)
        .heightEqualToWidth();
    }
    return self;
}
- (void)setBKmodel:(BKMITagsModel *)BKmodel{
    _BKmodel = BKmodel;
    [self.BKiconImageView sd_setImageWithURL:[NSURL URLWithString:BKmodel.icon_url]];
    self.BKtitleLabel.text = BKmodel.title;
}
@end
