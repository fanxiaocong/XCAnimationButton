
/**
 *     类名：      XCAnimationButton.h
 *
 *     工程名称：   带动画的按钮
 *
 *     创建人：     樊小聪
 *
 *     创建时间：   16/8/25
 */


/**
 *     备注：带动画的按钮
 */

#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface XCAnimationButton : UIButton

/** 👀 背景图片 👀 */
@property (nonatomic, strong) IBInspectable UIImage *image;

/** 👀 最终填充的按钮的颜色: default is redColor 👀 */
@property (nonatomic, strong) IBInspectable UIColor *favoredColor;

/** 👀 默认的背景颜色: default is lightGrayColor 👀 */
@property (nonatomic, strong) IBInspectable UIColor *defaultColor;

/** 👀 渐变环的颜色: default is orangeColor 👀 */
@property (nonatomic, strong) IBInspectable UIColor *circleColor;

/** 👀 线的颜色: default is blueColor 👀 */
@property (nonatomic, strong) IBInspectable UIColor *lineColor;

/** 👀 状态改变一次的时间: default is 1.0 seconds 👀 */
@property (nonatomic, assign) IBInspectable CGFloat duration;

@end
