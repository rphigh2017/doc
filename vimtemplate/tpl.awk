BEGIN{
    FS = ","
}

/<+++>/                 { print $0 }
length(<+++>)<<+++>     { <+ ACTION +> }
/(<+++>|<+++>|<+++>)/   { <+ ACTION +> }
<+++> !~ /<+++>/        { <+ ACTION +> }

END{
}
