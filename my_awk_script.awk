BEGIN {
    FS = " "
    OFS = ","
}
{
    if ( /^20/ )
    {
        dtstamp = $0
    }
    if ( NF = 2 )
    {
        price = $1
        commodity = $2
    }
    if ( commodity ~ /^[0-9]/ )
    {
        print dtstamp,price,commodity
    }
}
END {}