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

    public static function method2(i:Int):Int {
        return bitlengthmacro(i, 15, 16);
    }

    public static macro function bitlengthmacro(i:haxe.macro.Expr, n:Int, delta:Int) {
        if (delta == 1) return macro $v{n + 1};
        else {
            delta = delta >> 1;
            return macro {
                if ( ($i >> $v{n}) < 1 )
                    bitlengthmacro($i, $v{n - delta}, $v{delta});
                else if ( ($i >> $v{n}) > 1 )
                    bitlengthmacro($i, $v{n + delta}, $v{delta});
                else
                    $v{n + 1};
            }
        }
    }
}