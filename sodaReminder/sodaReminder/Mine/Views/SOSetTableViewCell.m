//
//  SOSetTableViewCell.m
//  PocketBooks
//
//  Created by bykj on 2019/8/28.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "SOSetTableViewCell.h"
#import "SOSetViewModel.h"
@interface SOSetTableViewCell()
@property(nonatomic, strong)UILabel *SOtitleLbl;
@property(nonatomic, strong)UILabel *SOcontentLbl;
@property(nonatomic, strong)UIImageView *SOarrowImgView;
@end
@implementation SOSetTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = SOH_Color(242, 242, 242, 1);
        [self.contentView addSubview:self.SOtitleLbl];
        [self.contentView addSubview:self.SOcontentLbl];
        [self.contentView addSubview:self.SOarrowImgView];
        
        [self.SOtitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(20);
            make.top.equalTo(self.contentView).offset(30);
            make.width.mas_equalTo(SOWIDTH * 0.5 - 20);
            make.height.mas_equalTo(25);
            make.bottom.equalTo(self.contentView).offset(-30);
        }];
        [self.SOarrowImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.contentView).offset(-15);
            make.centerY.equalTo(self.contentView);
            make.width.mas_equalTo(22);
            make.height.mas_equalTo(22);
        }];
        [self.SOcontentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.SOarrowImgView.mas_leading).offset(-5);
            make.centerY.equalTo(self.contentView);
            make.width.mas_equalTo(SOWIDTH * 0.5 - 5 - 22 - 15);
            make.height.mas_equalTo(25);
        }];
    }
    return self;
}
- (void)setModel:(SOSetViewModel *)model{
    _model = model;
    self.SOtitleLbl.text = _model.SOtitle;
    self.SOcontentLbl.text = _model.SOcontent;
}
#pragma mark - 属性懒加载
- (UILabel *)SOtitleLbl{
    if (!_SOtitleLbl) {
        _SOtitleLbl = [[UILabel alloc] init];
        _SOtitleLbl.textColor = [UIColor blackColor];
        _SOtitleLbl.font = [UIFont systemFontOfSize:24];
    }
    return _SOtitleLbl;
}
- (UILabel *)SOcontentLbl{
    if (!_SOcontentLbl) {
        _SOcontentLbl = [[UILabel alloc] init];
        _SOcontentLbl.textAlignment = NSTextAlignmentRight;
        _SOcontentLbl.textColor = [UIColor whiteColor];
        _SOcontentLbl.font = [UIFont boldSystemFontOfSize:25];
    }
    return _SOcontentLbl;
}
- (UIImageView *)SOarrowImgView{
    if (!_SOarrowImgView) {
        _SOarrowImgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"SO_arrow_right"]];
    }
    return _SOarrowImgView;
}
@end
