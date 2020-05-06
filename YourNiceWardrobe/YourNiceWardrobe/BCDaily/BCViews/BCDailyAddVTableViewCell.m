//
//  BCDailyAddVTableViewCell.m
//  YourNiceWardrobe
//
//  Created by 褚红彪 on 2020/5/4.
//  Copyright © 2020 hb. All rights reserved.
//

#import "BCDailyAddVTableViewCell.h"
#import "BCDailyAddModel.h"
@interface BCDailyAddVTableViewCell()<UITextViewDelegate>
@property(nonatomic, strong)UITextView *BCeditableView;
@property(nonatomic, strong)UILabel *BChiddenLbl;
@end

@implementation BCDailyAddVTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.BCeditableView];
        [self.BCeditableView addSubview:self.BChiddenLbl];
        
        [self.BCeditableView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(12);
            
            make.leading.equalTo(self.contentView).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.height.mas_greaterThanOrEqualTo(176);
            make.bottom.equalTo(self.contentView.mas_bottom).offset(-12);
        }];
        [self.BChiddenLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.BCeditableView).offset(6);
            
            make.leading.equalTo(self.BCeditableView).offset(6);
            make.trailing.equalTo(self.BCeditableView);
            make.height.mas_equalTo(18);
        }];
    }
    return self;
}
- (void)setBCViewModel:(BCDailyAddModel *)BCViewModel{
    _BCViewModel = BCViewModel;
    if ([_BCViewModel.BCDefault length]) {
        self.BChiddenLbl.text = _BCViewModel.BCDefault;
    } else {
        self.BChiddenLbl.text = @"";
    }
    if (_BCViewModel.BCContent.length) {
        self.BCeditableView.text = _BCViewModel.BCContent;
        self.BChiddenLbl.hidden = YES;
    } else {
        self.BCeditableView.text = @"";
        self.BChiddenLbl.hidden = NO;
    }
}
#pragma mark - UITextViewDelegate
- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    return YES;
}
- (void)textViewDidChange:(UITextView *)textView {
    if (!textView.text) {
        self.BChiddenLbl.hidden = NO;
    } else {
        self.BChiddenLbl.hidden = YES;
    }
    CGRect BCbounds = textView.bounds;
    CGSize BCsize = [self.BCeditableView sizeThatFits:CGSizeMake(BCbounds.size.width, MAXFLOAT)];
    BCbounds.size = BCsize;
    textView.bounds = BCbounds;
    self.BCViewModel.BCContent = textView.text;
    self.BCcontentHeight = BCsize.height;
    if (self.BCcontentHeight > 176) {
        if (self.BCeditBlock) {
            self.BCeditBlock(self);
        }
    }
}
- (BOOL)textViewShouldBeginEditing:(UITextView *)textView{
    self.BChiddenLbl.hidden = YES;
    return YES;
}
- (void)textViewDidBeginEditing:(UITextView *)textView{
    if (!textView.text.length){
        self.BChiddenLbl.hidden = NO;
    }else{
        self.BChiddenLbl.hidden = YES;
    }
    if ([textView.text isEqualToString:@"-"]) {
        textView.text = @"";
    }
}
- (BOOL)textViewShouldEndEditing:(UITextView *)textView{
    if (!textView.text.length){
        self.BChiddenLbl.hidden = NO;
    }else{
        self.BChiddenLbl.hidden = YES;
    }
    return YES;
}
- (void)textViewEndEditing:(UITextView *)textView{
    if (!textView.text.length){
        self.BChiddenLbl.hidden = NO;
    }else{
        self.BChiddenLbl.hidden = YES;
    }
}
#pragma mark - 属性懒加载
- (UILabel *)BChiddenLbl{
    if (!_BChiddenLbl) {
        _BChiddenLbl = [[UILabel alloc] init];
        _BChiddenLbl.font = [UIFont fontWithName:@"PingFangSC-Regular" size:18];
        _BChiddenLbl.textColor = [UIColor colorWithRed:168/255.0 green:172/255.0 blue:182/255.0 alpha:1/1.0];
    }
    return _BChiddenLbl;
}
- (UITextView *)BCeditableView{
    if (!_BCeditableView) {
        _BCeditableView = [[UITextView alloc] init];
        _BCeditableView.layer.cornerRadius = 8.0f;
        _BCeditableView.layer.masksToBounds = YES;
        _BCeditableView.backgroundColor = BCH_Color(242, 242, 242, 1);
        _BCeditableView.delegate = self;
        _BCeditableView.font = [UIFont fontWithName:@"PingFangSC-Regular" size:20];
        _BCeditableView.textColor = [UIColor colorWithRed:19/255.0 green:29/255.0 blue:50/255.0 alpha:1/1.0];
        _BCeditableView.scrollEnabled = NO;
        [_BCeditableView sizeToFit];
    }
    return _BCeditableView;
}
@end
