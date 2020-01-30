package;

// Antriel
// Matrefeytontas
class MethodWithLog {
    private static var log2:Float = Math.log(2);

    public static function method1(i:Int):Int {
        return Std.int(Math.log(i) / log2) + 1;
    }
}