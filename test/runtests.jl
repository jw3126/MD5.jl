using MD5
using Base.Test

@testset "String Tests" begin
    # From the reference https://tools.ietf.org/html/rfc1321 (final page)
    @test bytes2hex(md5("")) == "d41d8cd98f00b204e9800998ecf8427e"
    @test bytes2hex(md5("a")) == "0cc175b9c0f1b6a831c399e269772661"
    @test bytes2hex(md5("abc")) == "900150983cd24fb0d6963f7d28e17f72"
    @test bytes2hex(md5("message digest")) == "f96b697d7cb7938d525a2f31aaf161d0"
    @test bytes2hex(md5("abcdefghijklmnopqrstuvwxyz")) == "c3fcd3d76192e4007dfb496cca67e13b"
    @test bytes2hex(md5("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789")) ==  "d174ab98d277d9f5a5611c2c9f419d9f"
    @test bytes2hex(md5("12345678901234567890123456789012345678901234567890123456789012345678901234567890")) == "57edf4a22be3c955ac49da2e2107b67a"

end
