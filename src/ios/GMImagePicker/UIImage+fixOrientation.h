#import "Cordova/Cordova.h"
#if defined(__CORDOVA_8_0_0)
#import <UIKit/UIImage.h>
#endif

@interface UIImage(fixOrientation)

- (UIImage *)fixOrientation;

@end