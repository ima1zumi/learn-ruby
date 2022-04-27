# ref: https://tech.medpeer.co.jp/entry/2019/05/13/090000

case [0, [1, 2, 3]]
in [a, [b, *c]]
  pp a # 0
  pp b # 1
  pp c # [2, 3]
end
