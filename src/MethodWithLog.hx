package;

// Antriel
// Matrefeytontas
class MethodWithLog {
    private static var log2:Float = Math.log(2);
    private static var ilog2:Float = 1/Math.log(2);

    public static function method1(i:Int):Int {
        return Std.int(Math.log(i) / log2) + 1;
    }

    public static function method2(i:Int):Int {
        return Std.int(Math.log(i) / ilog2) + 1;
    }
}