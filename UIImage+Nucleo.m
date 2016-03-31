//
// UIImage+Nucleo.m
//
// Copyright © 2016 Yunseok Kim <mywizz@gmail.com>
//
// This work is free. You can redistribute it and/or modify it under the
// terms of the Do What The Fuck You Want To Public License, Version 2,
// as published by Sam Hocevar. See http://www.wtfpl.net/ for more details.


#import "UIImage+Nucleo.h"


static NSString * const kUIImageNucleoFontName = @"icomoon";


@implementation UIImage (Nucleo)

+ (UIImage *)imageFromNucleoCode:(unsigned short)code color:(UIColor *)color size:(CGSize)size
{
	static UIFont *font;
	static NSDictionary *attributes;
	
	if ( ! font)
	{
		font = [UIFont fontWithName:kUIImageNucleoFontName size:fmaxf(size.width, size.height)];
	}
	
	if ( ! attributes)
	{
		attributes = @{
					   NSFontAttributeName : font,
					   NSForegroundColorAttributeName : color
					   };
	}
	
	NSString *character = [NSString stringWithFormat:@"%C", code];
	
	CGSize charSize = [character sizeWithAttributes:attributes];

	UIGraphicsBeginImageContextWithOptions(charSize, NO, 0.0f);
	[character drawAtPoint:CGPointZero withAttributes:attributes];
	UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
	UIGraphicsEndImageContext();
	
	return image;
}

@end