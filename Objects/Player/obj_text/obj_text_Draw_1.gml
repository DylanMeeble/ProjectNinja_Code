///Add letter over time

if (time < text_length)
{
    time += spd;
    print = string_copy(text,0,time);
}
