class Method01010111 {
    public static function method1(i:Int) : Int {
        var out = 0;
        var f:Float = i;
        while(f > 1) {
            f/=2;
            out++;
        }
        return out;
    }
}