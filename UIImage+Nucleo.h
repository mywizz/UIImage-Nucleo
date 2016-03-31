//
// UIImage+Nucleo.h
//
// Copyright © 2016 Yunseok Kim <mywizz@gmail.com>
//
// This work is free. You can redistribute it and/or modify it under the
// terms of the Do What The Fuck You Want To Public License, Version 2,
// as published by Sam Hocevar. See http://www.wtfpl.net/ for more details.


@interface UIImage (Nucleo)

+ (UIImage *)imageFromNucleoCode:(unsigned short)code color:(UIColor *)color size:(CGSize)size;

@end