//
//  PKBillHistoryHeaderView.m
//  PocketBooks
//
//  Created by bykj on 2019/9/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PKBillHistoryHeaderView.h"
@interface PKBillHistoryHeaderView()
@property(nonatomic, strong)UILabel *titleLbl;
@property(nonatomic, strong)UIImageView *foldingImgView;
@end
@implementation PKBillHistoryHeaderView
- (instancetype)initWithReuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithReuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.titleLbl];
        [self.contentView addSubview:self.foldingImgView];
        
        [self.titleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(10);

            make.leading.equalTo(self.contentView).offset(15);
            make.trailing.equalTo(self.contentView).offset(-50);
            make.height.mas_equalTo(20);
            make.bottom.equalTo(self.contentView).offset(-10);
        }];
        [self.foldingImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(self.contentView);
            
            make.trailing.equalTo(self.contentView).offset(-10);
            make.width.mas_equalTo(20);
            make.height.mas_equalTo(20);
        }];
    }
    return self;
}
#pragma mark - 属性懒加载
- (UILabel *)titleLbl{
    if (!_titleLbl) {
        _titleLbl = [[UILabel alloc] init];
        _titleLbl.textColor = [UIColor blueColor];
        _titleLbl.font = [UIFont systemFontOfSize:18];
        _titleLbl.numberOfLines = 0;
    }
    return _titleLbl;
}
- (UIImageView *)foldingImgView{
    if (!_foldingImgView) {
        _foldingImgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"PK_btn_company_drop"]];
    }
    return _foldingImgView;
}
@end
