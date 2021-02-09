# 每3天的23:50分清理一次日志
50 23 */3 * * rm -rf /scripts/logs/*.log

# crazyJoy自动每日任务
10 8,12 * * * node /scripts/jd_crazy_joy.js >> /scripts/logs/jd_crazy_joy.log 2>&1
# 东东小窝
15 5 * * * node /scripts/jd_small_home.js >> /scripts/logs/jd_small_home.log 2>&1
# 宠汪汪
5 9 * * * node /scripts/jd_joy.js >> /scripts/logs/jd_joy.log 2>&1
# 导到所有互助码
47 5 */2 * * node /scripts/jd_get_share_code.js >> /scripts/logs/jd_get_share_code.log 2>&1


# 宝洁美发屋
1 8,9 14-31/1 1 * node /scripts/jd_bj.js >> /scripts/logs/jd_bj.log 2>&1

# # 工业品爱消除
# 20 * * * * node /scripts/jd_gyec.js >> /scripts/logs/jd_gyec.log 2>&1

# 神券驾到
1 7 13 1 * node /scripts/jd_super_coupon.js >> /scripts/logs/jd_super_coupon.log 2>&1

# 超级直播间任务赢京豆
40 21 * * * node /scripts/jd_super.js >> /scripts/logs/jd_super.log 2>&1

# 京年团圆pick
5 0 19,20 1 * node /scripts/jd_vote.js >> /scripts/logs/jd_vote.log 2>&1

# 京东粉丝专享
# 10 0 * * * node /scripts/jd_wechat_sign.js >> /scripts/logs/jd_wechat_sign.log 2>&1

# # 东东爱消除
# 0 * * * * node /scripts/jd_xxl.js >> /scripts/logs/jd_xxl.log 2>&1

# # 个护爱消除
# 40 * * * * node /scripts/jd_xxl_gh.js >> /scripts/logs/jd_xxl_gh.log 2>&1
