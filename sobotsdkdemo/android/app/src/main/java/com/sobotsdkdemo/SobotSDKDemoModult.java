package com.sobotsdkdemo;

import android.text.TextUtils;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.sobot.chat.SobotApi;
import com.sobot.chat.api.model.Information;
import com.sobot.chat.utils.ToastUtil;

/**
 * Created by Administrator on 2017/11/3.
 */

public class SobotSDKDemoModult extends ReactContextBaseJavaModule {

    public SobotSDKDemoModult(ReactApplicationContext reactContext) {
        super(reactContext);
    }

    @Override
    public String getName() {
        return "SobotSDKDemoNative";
    }

    @ReactMethod
    public void startSobot(){
        Information info = new Information();
        //TODO  此处配置请参考《Android-SDK对接集成文档V2.3.2.pdf》从‘初始化SDK（同时设定客服配置）’开始往下看
        info.setAppkey("");//必填。如果出现进入就返回，请检查此项，必须正确填写
        info.setUid("666666");//用户唯一标识
        if (TextUtils.isEmpty(info.getAppkey())){
            ToastUtil.showLongToast(getReactApplicationContext(), "Appkey 为必填");
            return;
        }
        SobotApi.startSobotChat(getReactApplicationContext(), info);
    }

    @ReactMethod
    public void exitSobot(){
        SobotApi.exitSobotChat(getReactApplicationContext());
    }
}