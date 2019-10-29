//
//  PBSetTableViewCell.m
//  PocketBooks
//
//  Created by bykj on 2019/8/28.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PBSetTableViewCell.h"
#import "PBSetViewModel.h"
@interface PBSetTableViewCell()
@property(nonatomic, strong)UILabel *PBtitleLbl;
@property(nonatomic, strong)UILabel *PBcontentLbl;
@property(nonatomic, strong)UIImageView *PBarrowImgView;
@end
@implementation PBSetTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor cyanColor];
        [self.contentView addSubview:self.PBtitleLbl];
        [self.contentView addSubview:self.PBcontentLbl];
        [self.contentView addSubview:self.PBarrowImgView];
        
        [self.PBtitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(20);
            make.top.equalTo(self.contentView).offset(30);
            make.width.mas_equalTo(PBWIDTH * 0.5 - 20);
            make.height.mas_equalTo(28);
            make.bottom.equalTo(self.contentView).offset(-30);
        }];
        [self.PBarrowImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.contentView).offset(-15);
            make.centerY.equalTo(self.contentView);
            make.width.mas_equalTo(22);
            make.height.mas_equalTo(22);
        }];
        [self.PBcontentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.PBarrowImgView.mas_leading).offset(-5);
            make.centerY.equalTo(self.contentView);
            make.width.mas_equalTo(PBWIDTH * 0.5 - 5 - 22 - 15);
            make.height.mas_equalTo(32);
        }];
    }
    return self;
}
- (void)setModel:(PBSetViewModel *)model{
    _model = model;
    self.PBtitleLbl.text = [NSString stringWithFormat:@"  %@  ",_model.PBtitle];
    CGSize size = [self.PBtitleLbl sizeThatFits:CGSizeMake(MAXFLOAT, 28)];
    [self.PBtitleLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.PBtitleLbl layoutIfNeeded];
    if (_model.PBcontent.length) {
        self.PBcontentLbl.hidden = NO;
    self.PBcontentLbl.text = [NSString stringWithFormat:@"  %@  ",_model.PBcontent];
    size = [self.PBcontentLbl sizeThatFits:CGSizeMake(MAXFLOAT, 32)];
    [self.PBcontentLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.PBcontentLbl layoutIfNeeded];
    }else{
        self.PBcontentLbl.hidden = YES;
    }
    [self.contentView layoutSubviews];
}
#pragma mark - 属性懒加载
- (UILabel *)PBtitleLbl{
    if (!_PBtitleLbl) {
        _PBtitleLbl = [[UILabel alloc] init];
        _PBtitleLbl.textColor = [UIColor blackColor];
        _PBtitleLbl.font = [UIFont systemFontOfSize:18];
        _PBtitleLbl.layer.cornerRadius = 14.0f;
        _PBtitleLbl.layer.masksToBounds = YES;
    }
    return _PBtitleLbl;
}
- (UILabel *)PBcontentLbl{
    if (!_PBcontentLbl) {
        _PBcontentLbl = [[UILabel alloc] init];
        _PBcontentLbl.textColor = [UIColor blackColor];
        _PBcontentLbl.font = [UIFont boldSystemFontOfSize:22];
        _PBcontentLbl.layer.cornerRadius = 16.0f;
        _PBcontentLbl.layer.masksToBounds = YES;
    }
    return _PBcontentLbl;
}
- (UIImageView *)PBarrowImgView{
    if (!_PBarrowImgView) {
        _PBarrowImgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"PB_arrow_right"]];
    }
    return _PBarrowImgView;
}
@end
