#import "UIImage+fixOrientation.h"
#import "Cordova/Cordova.h"
#if __CORDOVA_8_0_0
#import "UIKit/UIImage.h"
#import "UIKit/UIGraphics.h"
#endif


@implementation UIImage (fixOrientation)

- (UIImage *)fixOrientation {
    if (self.imageOrientation == UIImageOrientationUp) return self; 

    UIGraphicsBeginImageContextWithOptions(self.size, NO, self.scale);
    [self drawInRect:(CGRect){0, 0, self.size}];
    UIImage *normalizedImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return normalizedImage;
}

@end