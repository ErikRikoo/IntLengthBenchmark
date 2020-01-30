package;

import MethodWithLog;

class MethodRikoo {
    private static var lut:Array<Int> = [for(i in 0...256) Method01010111.method1(i)];

    public static function method1(i:Int):Int {
        var tmp:Int;
        if((tmp = i >> 24) != 0) {
            return 24 + lut[tmp];
        }

        if((tmp = (i >> 16) & 0xff) != 0) {
            return 16 + lut[tmp];
        }

        if((tmp = (i >> 8) & 0xff) != 0) {
            return 8 + lut[tmp];
        }

        return lut[i];
    }
}