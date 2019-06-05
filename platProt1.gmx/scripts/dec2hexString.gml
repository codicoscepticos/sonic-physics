//dec2hexString
integer_ = argument0
baseNum_ = 16
hexDigitsString_ = "0123456789ABCDEF"
hexString_ = ""
do
{
    remainder_ = integer_ mod baseNum_
    hexString_ = string_insert(string_char_at(hexDigitsString_, remainder_+1), hexString_, 0)
    integer_ = integer_ div baseNum_
}
until (integer_ == 0)
return hexString_
