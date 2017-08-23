//
//  UILabel+SizeFit.m
//  ShouerHealth
//
//  Created by HDF on 17/3/17.
//  Copyright © 2017年 HDF. All rights reserved.
//

#import "UILabel+SizeFit.h"

@implementation UILabel (SizeFit)


- (UILabel *)hdf_labelToFitWidth
{
    if (self.text.length != 0) {
        [self sizeToFit];
        self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, self.frame.size.width, self.font.pointSize);
    }else{
        self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y,0, 0);
    }
    return self;
}


- (UILabel *)hdf_labelToFitHeightWithLineSpacing:(CGFloat)lineSpacing//多行宽不变
{
    if (self.text.length == 0) {
        self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, 0, 0);
        return self;
    }
    CGFloat labelWidth = self.frame.size.width;
    NSTextAlignment textAlignment = self.textAlignment;

    NSInteger length = [self.text lengthOfBytesUsingEncoding:NSUTF8StringEncoding];
    length -= (length - self.text.length) / 2;
    length = (length +1) / 2;
    CGFloat textSize = (long)length*self.font.pointSize;
    
    if (textSize >labelWidth || [self.text rangeOfString:@"\n"].location != NSNotFound || [self.text rangeOfString:@"\r"].location != NSNotFound) {//如果字符串包含换行 或者文字长度大于label长度 -->多行
        self.numberOfLines = 0;
        NSMutableAttributedString *attStr = [[NSMutableAttributedString alloc]initWithString:self.text];
        NSMutableParagraphStyle *style = [[NSMutableParagraphStyle alloc] init];
        if (lineSpacing) {
            style.lineSpacing = lineSpacing;
        }
        NSInteger leng = labelWidth;
        if (attStr.length < labelWidth) {
            leng = attStr.length;
        }
        [attStr addAttribute:NSParagraphStyleAttributeName value:style range:NSMakeRange(0, leng)];
        self.attributedText = attStr;
        self.layer.masksToBounds = NO;
        [self sizeToFit];
        self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, labelWidth, self.frame.size.height);
        self.textAlignment = textAlignment;
    }else {//单行
        [self sizeToFit];
        self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, labelWidth, self.font.pointSize);
        self.textAlignment = textAlignment;
    }
    return self;
}

- (UILabel *)hdf_labelToFitHeightWithLineSpacing:(CGFloat)lineSpacing
                          paragraphSpacingBefore:(CGFloat)paragraphSpacingBefore
                                       alignment:(NSTextAlignment)alignment
                           isFirstLineHeadIndent:(BOOL)isFirstLineHeadIndent
{    
    if (self.text.length == 0) {
        self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, 0, 0);
        return self;
    }
    CGFloat labelWidth = self.frame.size.width;
    NSTextAlignment textAlignment = self.textAlignment;
    
    NSInteger length = [self.text lengthOfBytesUsingEncoding:NSUTF8StringEncoding];
    length -= (length - self.text.length) / 2;
    length = (length +1) / 2;
    CGFloat textSize = (long)length*self.font.pointSize;
    
    if (textSize >labelWidth || [self.text rangeOfString:@"\n"].location != NSNotFound || [self.text rangeOfString:@"\r"].location != NSNotFound) {//如果包含换行 -->多行
        self.numberOfLines = 0;
        NSMutableAttributedString *attStr = [[NSMutableAttributedString alloc]initWithString:self.text];
        NSMutableParagraphStyle *style = [[NSMutableParagraphStyle alloc] init];
        style.alignment = alignment;
        if (lineSpacing) {style.lineSpacing = lineSpacing;}
        if (paragraphSpacingBefore) {style.paragraphSpacingBefore = paragraphSpacingBefore;}
        if (isFirstLineHeadIndent) {style.firstLineHeadIndent = self.font.pointSize * 2;}
        NSInteger leng = labelWidth;
        if (attStr.length < labelWidth) {
            leng = attStr.length;
        }
        [attStr addAttribute:NSParagraphStyleAttributeName value:style range:NSMakeRange(0, leng)];
        self.attributedText = attStr;
        self.layer.masksToBounds = NO;
        [self sizeToFit];
        self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, labelWidth, self.frame.size.height);
    }else{//单行
        [self sizeToFit];
        self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, labelWidth, self.font.pointSize);
        self.textAlignment = textAlignment;
    }
    return self;
}



@end
