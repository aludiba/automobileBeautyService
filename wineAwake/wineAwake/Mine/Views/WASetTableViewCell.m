//
//  WASetTableViewCell.m
//  PocketBooks
//
//  Created by bykj on 2019/8/28.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "WASetTableViewCell.h"
#import "WASetViewModel.h"
@interface WASetTableViewCell()
@property(nonatomic, strong)UILabel *titleLbl;
@property(nonatomic, strong)UILabel *contentLbl;
@property(nonatomic, strong)UIImageView *arrowImgView;
@end
@implementation WASetTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = WAH_Color(244, 245, 246, 1);
        [self.contentView addSubview:self.titleLbl];
        [self.contentView addSubview:self.contentLbl];
        [self.contentView addSubview:self.arrowImgView];
        
        [self.titleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(20);
            make.top.equalTo(self.contentView).offset(30);
            make.width.mas_equalTo(WAWIDTH * 0.5 - 20);
            make.height.mas_equalTo(21);
            make.bottom.equalTo(self.contentView).offset(-30);
        }];
        [self.arrowImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.contentView).offset(-15);
            make.centerY.equalTo(self.contentView);
            make.width.mas_equalTo(22);
            make.height.mas_equalTo(22);
        }];
        [self.contentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.arrowImgView.mas_leading).offset(-5);
            make.centerY.equalTo(self.contentView);
            make.width.mas_equalTo(WAWIDTH * 0.5 - 5 - 22 - 15);
            make.height.mas_equalTo(16);
        }];
    }
    return self;
}
- (void)setModel:(WASetViewModel *)model{
    _model = model;
    self.titleLbl.text = _model.title;
    self.contentLbl.text = _model.content;
}
#pragma mark - 属性懒加载
- (UILabel *)titleLbl{
    if (!_titleLbl) {
        _titleLbl = [[UILabel alloc] init];
        _titleLbl.textColor = [UIColor blackColor];
        _titleLbl.font = [UIFont systemFontOfSize:18];
    }
    return _titleLbl;
}
- (UILabel *)contentLbl{
    if (!_contentLbl) {
        _contentLbl = [[UILabel alloc] init];
        _contentLbl.textAlignment = NSTextAlignmentRight;
        _contentLbl.textColor = [UIColor purpleColor];
        _contentLbl.font = [UIFont systemFontOfSize:20];
    }
    return _contentLbl;
}
- (UIImageView *)arrowImgView{
    if (!_arrowImgView) {
        _arrowImgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"WA_arrow_right"]];
    }
    return _arrowImgView;
}
@end
