#!/bin/bash -xv
# SPDX-FileCopyrightText: 2024 Hyuta Sasaki
# SPDX-Licence-Identifier: BSD-3-Clause

ng() {
    echo "NG at Line ${1}"
    res=1
}

res=0

#　正しい入力
out=$(echo 1/1 |./plus_omikuji)
[ "${out}" = "今日の運勢は: 大吉" ] || [ "${out}" = "今日の運勢は: 大凶" ] || ng ${LINENO}

out=$(echo 1/2 |./plus_omikuji)
[ "${out}" = "今日の運勢は: 大吉" ] || [ "${out}" = "今日の運勢は: 吉" ] || [ "${out}" = "今日の運勢は: 中吉" ] || [ "${out}" = "今日の運勢は:小吉" ] || [ "${out}" = "今日の運勢は: 末吉" ] || [ "${out}" = "今日の運勢は: 凶" ] || [ "${out}" = "今日の運勢は: 大凶" ] || ng ${LINENO}

out=$(echo 1/3 |./plus_omikuji)
[ "${out}" = "今日の運勢は: 大吉" ] || [ "${out}" = "今日の運勢は: 凶" ] || [ "${out}" = "今日の運勢は: 大凶" ] || ng ${LINENO}

out=$(echo 1/4 |./plus_omikuji)
[ "${out}" = "今日の運勢は: 大吉" ] || [ "${out}" = "今日の運勢は: 吉" ] || [ "${out}" = "今日の運勢は: 中吉" ] || [ "${out}" = "今日の運勢は: 小吉" ] || [ "${out}" = "今日の運勢は: 末吉" ] || [ "${out}" = "今日の運勢は: 凶" ] || [ "${out}" = "今日の運勢は: 大凶" ] || ng ${LINENO}

out=$(echo 1/5 |./plus_omikuji)
[ "${out}" = "今日の運勢は: 大吉" ] || [ "${out}" = "今日の運勢は: 吉" ] || [ "${out}" = "今日の運勢は: 中吉" ] || [ "${out}" = "今日の運勢は: 小吉" ] || [ "${out}" = "今日の運勢は: 末吉" ] || ng ${LINENO}

out=$(echo 1/6 |./plus_omikuji)
[ "${out}" = "今日の運勢は: 大吉" ] || [ "${out}" = "今日の運勢は: 吉" ] || [ "${out}" = "今日の運勢は: 中吉" ] || [ "${out}" = "今日の運勢は: 小吉" ] || [ "${out}" = "今日の運勢は: 末吉" ] || [ "${out}" = "今日の運勢は: 凶" ] || [ "${out}" = "今日の運勢は: 大凶" ] || ng ${LINENO} 

out=$(echo 1/7 |./plus_omikuji)
[ "${out}" = "今日の運勢は: 大吉" ] || [ "${out}" = "今日の運勢は: 吉" ] || [ "${out}" = "今日の運勢は: 中吉" ] || [ "${out}" = "今日の運勢は: 小吉" ] || [ "${out}" = "今日の運勢は: 末吉" ] || [ "${out}" = "今日の運勢は: 凶" ] || [ "${out}" = "今日の運勢は: 大凶" ] || ng ${LINENO}

out=$(echo 1/8 |./plus_omikuji)
[ "${out}" = "今日の運勢は: 大吉" ] || [ "${out}" = "今日の運勢は: 吉" ] || [ "${out}" = "今日の運勢は: 中吉" ] || [ "${out}" = "今日の運勢は: 末吉" ] || [ "${out}" = "今日の運勢は: 凶" ] || [ "${out}" = "今日の運勢は: 大凶" ] || ng ${LINENO}

out=$(echo 01/01 |./plus_omikuji)
[ "${out}" = "今日の運勢は: 大吉" ] || [ "${out}" = "今日の運勢は: 大凶" ] || ng ${LINENO}

# 異常な入力
out=$(echo  |./plus_omikuji)
[ "${out}" = "無効な入力です。MM/DDの形式で入力してください。" ] || ng ${LINENO}

out=$(echo あ |./plus_omikuji)
[ "${out}" = "無効な入力です。MM/DDの形式で入力してください。" ] || ng ${LINENO}

out=$(echo 13/32 |./plus_omikuji)
[ "${out}" = "月は1~12、日にちは1~31の範囲で入力してください。" ] || ng ${LINENO}



# 結果判定
[ "$res" = 0 ] && echo OK
exit $res
