#include <stdio.h>
#include <time.h>

int main() {
    const char *DAYS[] = {"日", "月", "火", "水", "木", "金", "土"};

    long now = time(NULL);
    struct tm *tm_info = localtime(&now);

    int year = tm_info->tm_year + 1900;
    int month = tm_info->tm_mon + 1;
    int day = tm_info->tm_mday;
    int weekday_index = tm_info->tm_wday;

    printf("%d年%d月%d日 (%s)\n", year, month, day, DAYS[weekday_index]);

    return 0;
}

