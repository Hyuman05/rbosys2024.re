#!/usr/bin/bash -
#SPDX-FileCopyrightText: 2024 Hyuta Sasaki 
#SPDX-Licence-Indentifier: BSD-3-Clause
ng () {
        echo NG at Line ${1}
	ret=1
}

ret=0

#正しいインプット
out=$(./plus_omikuji 1/1)
[ "${out}" = 大吉 ] || [ "${out}" = 大凶 ] || ng ${LINENO}

out=$(./plus_omikuji 1/2)
[ "${out}" = 大吉 ] || [ "${out}" = 吉 ] || [ "${out}" = 中吉 ] || [ "${out}" = 小吉 ] || [ "${out}" = 末吉 ] || [ "${out}" = 凶] || [ "${out}" = 大凶] || ng ${LINENO}

out=$(./plus_omikuji 1/3)
[ "${out}" = 大吉 ] || ["${out}" = 凶] || ["${out}" = 大凶] || ng ${LINENO}

out=$(./plus_omikuji 1/4)
[ "${out}" = 大吉 ] || [ "${out}" = 吉 ] || [ "${out}" = 中吉 ] || [ "${out}" = 小吉 ] || [ "${out}" = 末吉 ] || [ "${out}" = 凶] || [ "${out}" = 大凶] || ng ${LINENO}

out=$(./plus_omikuji 1/5)
[ "${out}" = 大吉 ] || [ "${out}" = 吉 ] || [ "${out}" = 中吉 ] || [ "${out}" = 小吉 ] || [ "${out}" = 末吉 ] || ng ${LINENO}

out=$(./plus_omikuji 1/6)
[ "${out}" = 大吉 ] || [ "${out}" = 吉 ] || [ "${out}" = 中吉 ] || [ "${out}" = 小吉 ] || [ "${out}" = 末吉 ] || [ "${out}" = 凶] || [ "${out}" = 大凶] || ng ${LINENO}

out=$(./plus_omikuji 1/7)
[ "${out}" = 大吉 ] || [ "${out}" = 吉 ] || [ "${out}" = 中吉 ] || [ "${out}" = 小吉 ] || [ "${out}" = 末吉 ] || [ "${out}" = 凶] || [ "${out}" = 大凶] || ng ${LINENO}

out=$(./plus_omikuji 1/8)
[ "${out}" = 大吉 ] || [ "${out}" = 吉 ] || [ "${out}" = 中吉 ] || [ "${out}" = 末吉 ] ||　[ "${out}" = 凶] || [ "${out}" = 大凶] || ng ${LINENO}

#変なインプット

out=$(./plus_omikuji )
[ "$?" = 0 ] || ng ${LINENO}
[ "${out}" = "無効な入力です。MM/DDの形式で入力してください。" ] || ng ${LINENO}

out=$(./plus_omikuji 1月１日)
[ "$?" = 0 ] || ng ${LINENO}
[ "${out}" = "無効な入力です。MM/DDの形式で入力してください。" ] || ng ${LINENO}

out=$(./plus_omikuji 01/01)
[ "$?" = 0 ] || ng ${LINENO}
[ "${out}" = "無効な入力です。MM/DDの形式で入力してください。" ] || ng ${LINENO}

out=$(./plus_omikuji あ)
[ "$?" = 0 ] || ng ${LINENO}
[ "${out}" = "無効な入力です。MM/DDの形式で入力してください。" ] || ng ${LINENO}

out=$(./plus_omikuji 13/40)
[ "$?" = 0 ] || ng ${LINENO}
[ "${out}" = "月は1~12、日にちは1~31の範囲で入力してください。" ] || ng ${LINENO}

[ "$ret" = 0 ] && echo OK
exit $ret
