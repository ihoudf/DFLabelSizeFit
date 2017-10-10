# DFLabelSizeFit

<img src="https://img.shields.io/badge/build-passing-green.svg">
<img src="https://img.shields.io/badge/pod-1.1.0-yellow.svg">
<img src="https://img.shields.io/badge/license-MIT-brightgreen.svg">
<img src="https://img.shields.io/badge/platform-iOS-blue.svg">
<img src="https://img.shields.io/badge/support-iOS%206%2B-yellowgreen.svg">
<a href="http://blog.csdn.net/hdfqq188816190" target="blank"><img src="https://img.shields.io/badge/blog-ihoudf-orange.svg"></a>
<a href="https://ihoudf.github.io/" target="blank"><img src="https://img.shields.io/badge/homepage-ihoudf-brightgreen.svg"></a>

#####<font color="#8DBE0E">one line of code to fit label size.</font>
#####<font color="#8DBE0E">一行代码自适应label size</font>
<br>
result：
<br>

![](https://github.com/ihoudf/DFLabelSizeFit/blob/master/IMG_4875.jpg?raw=true)
<br>

### system Requirements
This library requires iOS 6.0+.

### Installation

###### CocoaPods

    1.Add pod 'DFLabelSizeFit' to your Podfile.
    2.Run pod install or pod update.
    3.import "DFLabelSizeFit.h"


###### Manually

    1.Download all the files in the DFLabelSizeFit subdirectory.
    2.Add the DFLabelSizeFit group to your Xcode project.
    3.import "DFLabelSizeFit.h

### Document
* use these methods you should set label's frame and font at first. 
<br>

1.single line text。 the label height you get is the fontsize you set.<br>

```
- (UILabel *)df_labelSizeFit;
```

<br>
2. Multiline text in one paragraph.<br>
@param lineSpacing lineSpacing<br>
@param singleLineKeepWidth  when single line,keep width you set or get the actual label width.<br>

```
- (UILabel *)df_labelSizeFitWithLineSpacing:(CGFloat)lineSpacing
                        singleLineKeepWidth:(BOOL)singleLineKeepWidth;
```

<br>
3. muti paragraph<br>
 
 @param lineSpacing  lineSpacing<br>
 @param paragraphSpacingBefore  paragraphSpacingBefore<br>
 @param alignment   alignment<br>
 @param isFirstLineHeadIndent   isFirstLineHeadIndent<br>

```
- (UILabel *)df_labelSizeFitWithLineSpacing:(CGFloat)lineSpacing
                     paragraphSpacingBefore:(CGFloat)paragraphSpacingBefore
                                  alignment:(NSTextAlignment)alignment
                      isFirstLineHeadIndent:(BOOL)isFirstLineHeadIndent;
```

### License
provided under the MIT license. See <a href="https://github.com/ihoudf/DFLabelSizeFit/blob/master/LICENSE">LICENSE</a>  file for details.

<br>
<br>

## 中文介绍

### 系统要求
最低支持 iOS 6.0
### 安装
###### CocoaPods

    1.在 Podfile 中添加 pod 'DFLabelSizeFit'。
    2.执行 pod install 或 pod update。
    3.导入 "DFLabelSizeFit.h"。



###### 手动安装

    1.下载 DFLabelSizeFit 文件夹内的所有内容。
    2.将 DFLabelSizeFit文件夹添加(拖放)到你的工程。
    3.import "DFLabelSizeFit.h"


### 文档：
* 使用这些方法前你需要先设置label的frame和font
<br>

1.单行。返回label高度为你设置的font的值。_<br>

```
- (UILabel *)df_labelSizeFit;
```

<br>
2. 多行。<br>
@param lineSpacing 行距<br>
@param keepWidth 文字单行时是保持设置的frame的width还是返回实际的label的width<br>

```
- (UILabel *)df_labelSizeFitWithLineSpacing:(CGFloat)lineSpacing
                        singleLineKeepWidth:(BOOL)singleLineKeepWidth;
```

<br>
3. 多段落设置富文本<br>
 @param lineSpacing 行距<br>
 @param paragraphSpacingBefore 段落之间的间距<br>
 @param alignment 对齐方式<br>
 @param isFirstLineHeadIndent 首行是否缩进两字符<br>

```
- (UILabel *)df_labelSizeFitWithLineSpacing:(CGFloat)lineSpacing
                     paragraphSpacingBefore:(CGFloat)paragraphSpacingBefore
                                  alignment:(NSTextAlignment)alignment
                      isFirstLineHeadIndent:(BOOL)isFirstLineHeadIndent;
```

### 许可证
使用 MIT 许可证，详情见<a href="https://github.com/ihoudf/DFLabelSizeFit/blob/master/LICENSE">LICENSE</a> 文件。
#THANKS!
<br>
<font color="#42C485">qq交流群：479873475</font>
<br>

<font color="#42C485">合作qq：188816190</font>
<br>


