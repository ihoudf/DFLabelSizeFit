//
//  UILabel+SizeFit.h
//  ShouerHealth
//
//  Created by HDF on 17/3/17.
//  Copyright © 2017年 HDF. All rights reserved.
//  github:https://github.com/ihoudf/DFLabelSizeFit
//

#import <UIKit/UIKit.h>

@interface UILabel (DFLabelSizeFit)


/***** use these method you should set label's frame and font at first. *****/


/**
 single line text。 the label height you get is the fontsize you set.
 
 @return label
 */
- (UILabel *)df_labelSizeFit;


/**
 Multiline text in one paragraph.
 
 @param lineSpacing lineSpacing
 @param singleLineKeepWidth when single line,keep width you set or get the actual label width.
 @return label
 */
- (UILabel *)df_labelSizeFitWithLineSpacing:(CGFloat)lineSpacing
                        singleLineKeepWidth:(BOOL)singleLineKeepWidth;


/**
 muti paragraph
 
 @param lineSpacing  lineSpacing
 @param paragraphSpacingBefore  paragraphSpacingBefore
 @param alignment   alignment
 @param isFirstLineHeadIndent   isFirstLineHeadIndent
 @return label
 */
- (UILabel *)df_labelSizeFitWithLineSpacing:(CGFloat)lineSpacing
                     paragraphSpacingBefore:(CGFloat)paragraphSpacingBefore
                                  alignment:(NSTextAlignment)alignment
                      isFirstLineHeadIndent:(BOOL)isFirstLineHeadIndent;

@end

