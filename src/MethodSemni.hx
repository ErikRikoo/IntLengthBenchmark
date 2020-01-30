package;

class MethodSemni {
    public static function method1(i:Int, n:Int=31, delta:Int=32):Int {
        delta = delta >> 1;
        if ( (i >> n) < 1 )
            return method1(i, n - delta, delta);
        else if ( (i >> n) > 1 )
            return method1(i, n + delta, delta);
        else return n+1;
    }
}