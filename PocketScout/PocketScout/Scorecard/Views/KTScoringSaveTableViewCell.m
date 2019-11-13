//
//  KTScoringSaveTableViewCell.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "KTScoringSaveTableViewCell.h"
#import "KTScorecardViewModel.h"

@interface KTScoringSaveTableViewCell()
@property(nonatomic, strong)UIButton *KTSaveButton;//保存按钮
@end
@implementation KTScoringSaveTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self KTSetContentView];
    }
    return self;
}
#pragma mark - actions
- (void)KTSetContentView{
    [self.contentView addSubview:self.KTSaveButton];
    
    [self.KTSaveButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(120);
        make.top.equalTo(self.contentView).offset(20);
        make.trailing.equalTo(self.contentView).offset(-120);
        make.height.mas_equalTo(44);
        make.bottom.equalTo(self.contentView).offset(-20);
    }];
}
- (void)KTSave:(UIButton *)sender{
    if (self.KTScorecardSaveB) {
        self.KTScorecardSaveB(self);
    }
}
- (void)setKTModel:(KTScorecardViewModel *)KTModel{
    _KTModel = KTModel;
    
}
#pragma mark - 属性懒加载
- (UIButton *)KTSaveButton{
    if (!_KTSaveButton) {
        _KTSaveButton = [[UIButton alloc] init];
        [_KTSaveButton setTitle:NSLocalizedString(@"保存比赛结果", nil) forState:UIControlStateNormal];
        [_KTSaveButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _KTSaveButton.backgroundColor = [UIColor systemBlueColor];
        _KTSaveButton.titleLabel.font = [UIFont boldSystemFontOfSize:20];
        _KTSaveButton.layer.cornerRadius = 8.0f;
        _KTSaveButton.layer.masksToBounds = YES;
        _KTSaveButton.layer.borderColor = [UIColor systemGreenColor].CGColor;
        _KTSaveButton.layer.borderWidth = 2.0f;
        _KTSaveButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_KTSaveButton addTarget:self action:@selector(KTSave:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _KTSaveButton;
}
@end
