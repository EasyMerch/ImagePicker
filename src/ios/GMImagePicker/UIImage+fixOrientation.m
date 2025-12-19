#import "UIImage+fixOrientation.h"
#import "UIKit/UIImage.h"
#import "UIKit/UIGraphics.h"

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