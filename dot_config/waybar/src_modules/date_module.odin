package date_module

import "core:time"
import "core:fmt"

main :: proc() {
    days := [7]string{"日", "月", "火", "水", "木", "金", "土"}

    now := time.now()

    year, month, day := time.date(now)
    weekday := time.weekday(now)

    fmt.printf("%d年%d月%d日 (%s)\n", year, month, day, days[weekday])
}

