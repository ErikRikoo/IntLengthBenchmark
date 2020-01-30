package ;

class Main {
    private static function bench(f:Void->Void, count):Float {
        var start = haxe.Timer.stamp();
        for(i in 0...count) {
            f();
        }

        return haxe.Timer.stamp() - start;
    }

    private static function testOnEachInteger(f:Int->Void) {
        for(i in 0...(1<<32)) {
            f(i);
        }
    }

    public static function main() {
        var count = 1<<16;

        trace("Looping with a float");
        trace("by 01010111");
        trace("Time: " + bench(
            () -> testOnEachInteger(get_len)
        , count));
    }

    // 01010111 version 1
    static function get_len(i:Int):Int {
        var out = 0;
        var f:Float = i;
        while(f > 1) {
            f/=2;
            out++;
        }
        return out;
    }
}