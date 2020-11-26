const exec = require("child_process").execSync;
const fs = require("fs");
const axios = require("axios");
const smartReplace = require("./smartReplace");

// 公共变量
const Secrets = {
    COOKIE_QQYD: process.env.COOKIE_QQYD,
    PUSH_KEY: process.env.PUSH_KEY, //server酱推送消息
    BARK_PUSH: process.env.BARK_PUSH, //Bark推送
    TG_BOT_TOKEN: process.env.TG_BOT_TOKEN, //TGBot推送Token
    TG_USER_ID: process.env.TG_USER_ID, //TGBot推送成员ID  
};

async function changeFiele() {
    let response = await axios.get(Secrets.SyncUrl);
    let content = response.data;
    content = await smartReplace.replaceWithSecrets(content, Secrets);
    await fs.writeFileSync("./execute.js", content, "utf8");
    console.log("替换变量完毕");
}

async function start() {
    console.log(`当前执行时间:${new Date().toString()}`);
    if (!Secrets.COOKIE_QQYD) {
        console.log("请填写 COOKIE_QQYD 后在继续");
        return;
    }
    if (!Secrets.SyncUrl) {
        console.log("请填写 SYNCURL 后在继续");
        return;
    }
    console.log(`当前共${Secrets.COOKIE_QQYD.split("&").length}个账号需要签到`);
    try {
        await changeFiele();
        await exec("node execute.js", { stdio: "inherit" });
    } catch (e) {
        console.log("执行异常:" + e);
    }
    console.log("执行完毕");
}

start();
