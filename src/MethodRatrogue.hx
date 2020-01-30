package;

class MethodRatrogue {
    private static var lut1:Array<Int> = [for(i in 0...32) Std.int(Math.pow(2, i))]; 

    private static var lut2:Map<Int, Int> = [
        for (i in 0...32) Std.int(Math.pow(2, i)) => i
    ];

    public static function method1(num:Int):Int {
        var i = 0;
        while(num >= lut1[i]) { i++; }
        return i; 
    }

    public static function method2(num:Int):Int {
        return lut2[roundUpToNextPowerOfTwo(num + 1)];
    }

    inline static function roundUpToNextPowerOfTwo(x:Int):Int {
        x--;
        x |= x >> 1;  // handle  2 bit numbers
        x |= x >> 2;  // handle  4 bit numbers
        x |= x >> 4;  // handle  8 bit numbers
        x |= x >> 8;  // handle 16 bit numbers
        x |= x >> 16; // handle 32 bit numbers
        x++;
        return x;
    }

}