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
        var count = 1<<24;

        trace("Looping with a float");
        trace("by 01010111");
        trace("Time: " + bench(
            () -> testOnEachInteger(Method01010111.method1)
        , count));
        trace("---------------------------------------");

        trace("LUT(Array) with power of 2");
        trace("by Ratrogue");
        trace("Time: " + bench(
            () -> testOnEachInteger(MethodRatrogue.method1)
        , count));
        trace("---------------------------------------");

        trace("LUT(Map) with power of 2");
        trace("by Ratrogue");
        trace("Time: " + bench(
            () -> testOnEachInteger(MethodRatrogue.method2)
        , count));
        trace("---------------------------------------");

        trace("Recursive method");
        trace("by Semni");
        trace("Time: " + bench(
            () -> testOnEachInteger((i:Int) -> return MethodSemni.method1(i))
        , count));
        trace("---------------------------------------");

        trace("Log with division");
        trace("Time: " + bench(
            () -> testOnEachInteger(MethodWithLog.method1)
        , count));
        trace("---------------------------------------");

        trace("Log with multiplication");
        trace("Time: " + bench(
            () -> testOnEachInteger(MethodWithLog.method2)
        , count));
        trace("---------------------------------------");

        trace("256 Lut and splitting int into 4 parts");
        trace("by Rikoo");
        trace("Time: " + bench(
            () -> testOnEachInteger(MethodRikoo.method1)
        , count));
        trace("---------------------------------------");
    }


}